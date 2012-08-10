# lib/tasks/nyc_data_upload.rake

namespace :excel_data do
   #----------------------------------------------------
  desc "Upload NYC excel spreadsheet data"
  task :upload, [:clean, :broadway] => :environment do |t, args|
    args.with_defaults(clean:nil, broadway:nil)
    require 'roo'
    if args[:clean].present?
      puts "*** Clean DB ***"
      PermitDetail.delete_all
      Permit.delete_all
      Property.delete_all
      NycGovExcelWebfile.where(processed:true).update_all processed:nil
      NycGovExcelWebfile.where(broadway_test:true).update_all broadway_test:nil
    end
    
    puts "NycGovExcelWebfile unprocessed #{NycGovExcelWebfile.where(processed:true).count} of #{NycGovExcelWebfile.count}"
    
    if args[:broadway].present?
      puts "*** Broadway Mode ***"
      broadway_only= true
      puts "NycGovExcelWebfile broadway_test #{NycGovExcelWebfile.where(broadway_test:true).count} of #{NycGovExcelWebfile.count}"
      excel_files = NycGovExcelWebfile.where(broadway_test:nil).order("date_base ASC, type DESC")
      
    else
      broadway_only= nil
      excel_files = NycGovExcelWebfile.where(processed:nil).order("date_base ASC, type DESC")
    end    
      
    # get unprocessed excel url name
    puts "rook 001" # testing
    titles = Hash.new
    data_row = Hash.new 
    
    excel_files_ct = 0
    excel_files.each do |unprocessed|
      puts "rook 010: #{unprocessed.full_url}" # testing
      spreadsheet = Excel.new(unprocessed.full_url)
      titles.clear
      spreadsheet.last_row.times do |row| 
        data_row.clear
        if row == 3
          spreadsheet.last_column.times do |column|
            if spreadsheet.cell(row,column).present?
              title = spreadsheet.cell(row,column).to_s.delete("'").strip.squeeze(' ').downcase.to_sym
              xref_title = XrefTitles.where("computed_key = '#{title}'").first
              title = xref_title.subsitute_key.to_sym if xref_title.present?
              titles[title] =  column 
            end
          end
        end

        if row > 3 # get column values from each row
 puts "titles.class = #{titles.class} [#{row},#{column}]" if titles.nil?  # testing     
          titles.each do |title, column|
            if spreadsheet.cell(row,column).present?
              case spreadsheet.celltype(row,column)
                when :string
                  data_row[title] = spreadsheet.cell(row,column).strip.squeeze(' ')
                when :float
                  data_row[title] = spreadsheet.cell(row,column) unless spreadsheet.cell(row,column).zero?
                else
                  data_row[title] = spreadsheet.cell(row,column)
              end
              data_row[:date_base] = unprocessed.date_base
              data_row[:source] = unprocessed.type          
            end 
          end
    
          # Correct/Remove invalid datatype
          data_row.each do |key,value|
            if key.to_s.rindex('_date',-5).present?
              if !value.is_a?(Date)
                puts "#{key}:'#{value}' is not a Date"
                data_row.delete(key)
              end
            end
            if key.to_s.rindex('_name',-5).present?
              if value.is_a?(String)
                data_row[key] = value.split(' ').each{|word| word.capitalize!}.join(' ')
              end
            end
            if key.to_s.rindex('_number',-7).present?
              if !value.is_a?(String)
                data_row[key] = value.to_i.to_s
              end
            end
          end
          
          #Test if already processed this excel file
          if row > 1
            been_here = nil
          else
            if data_row[:source].index("Permit")
              been_here = Permit.where({date_base:data_row[:source],source:data_row[:source]})
            else
              been_here = PermitDetail.where({date_base:data_row[:source],source:data_row[:source]})
            end
          end        
          
          saved_count = process_property_and_permit_data(data_row,broadway_only, been_here)  
        end      
      end
    spreadsheet.remove_tmp
    if broadway_only.present?
      unprocessed.broadway_test = true
    else  
      unprocessed.processed = true
    end
    unprocessed.save
    excel_files_ct += 1
    if excel_files_ct > 5
      ix = 0
      iz = 0
      puts ">>Property.count == #{iz = Property.count}"
      ix += iz
      puts ">>Permit.count == #{iz = Permit.count}"
      ix += iz
      puts ">>PermitDetail.count == #{iz = PermitDetail.count}"
      ix += iz
      puts ">TOTAL == #{ix}"      
      abort("testing too much")  ###> Testing 
    end
  end
      puts "excel_files_ct == #{excel_files_ct}"
      puts "rook DONE!! saved_count = #{saved_count}" # testing
end 

#----------------------------------------------------
  def process_property_and_permit_data(excel_data_row_hash, broadway_only, been_here=nil)
    
    
    saved_count = 0
    
    property_key_fields = [:bin_integer,:borough, 
    :property_block_integer, :property_lot_integer, 
    :property_house_number,
    :property_street_name]
    
    property_fields = [:bin_integer,:borough, 
    :property_block_integer, :property_lot_integer, 
    :property_house_number,
    :property_street_name, :building_kind_integer, 
    :community_board_integer, :owners_business_name, 
    :owners_business_type, :owners_city_state_zip, 
    :owners_first_and_last_name, :owners_house_street,
    :owners_phone_number, :property_zip_code, 
    :special_district_name_0, :special_district_name_1,
    :special_district_name_2]
    
    permit_key_fields = [
      :job_integer,
      :job_document_number,
      :permit_sequence_integer,
      :permit_subtype,
      :date_base]
          
    permit_fields = [
      :acts_as_superintendent_boolean,
      :expiration_date,
      :filing_date,
      :filing_status,
      :home_improvement_contractor_license,
      :issuance_date,
      :job_kind,
      :job_start_date,
      :non_profit_boolean,
      :oil_gas,
      :permit_kind,
      :permit_status,
      :permit_subtype,
      :permittees_business_name,
      :permittees_first_and_last_name,
      :permittees_license_integer,
      :permittees_license_kind,
      :permittees_other_title,
      :permittees_phone_number,
      :residential_boolean,
      :self_cert_boolean,
      :site_fill,
      :site_safety_manager_business_name,
      :site_safety_managers_name,
      :superintendent_business_name,
      :superintendent_first_and_last_name,
      :work_kind, 
      :date_base,
      :source
      ]
  
    permit_detail_key_fields = [
      :job_integer,
      :job_document_integer,
      :date_base]
            
    permit_detail_fields = [
      :applicant_first_and_last_name,
      :applicant_license_integer,
      :applicant_professional_title,
      :applicants_first_and_last_name,
      :approved_date, #Date
      :assigned_date, #Date
      :bin_integer,
      :borough,
      :city_owned_boolean,
      :community_board_integer,
      :fee_status,
      :first_permit_date, #Date
      :fully_filed_date, #Date
      :fully_paid_date, #Date
      :fully_permitted_date, #Date
      :initial_cost_decimal,
      :job_description,
      :job_document_integer,
      :job_integer,
      :job_kind,
      :job_status,
      :latest_action_date, #Date
      :other_boolean,
      :other_description,
      :paid_date, #Date
      :plan_assigned_date, #Date
      :pre_filing_date, #Date
      :professional_certification_boolean,
      :property_block_integer,
      :property_house_number,
      :property_lot_integer,
      :property_street_name,
      :property_zip_code, 
      :total_estimated_fee_decimal,
      :zoning_district_1,
      :zoning_district_2,
      :zoning_district_3,
      :date_base,
      :source
      ]
    
    property_data = excel_data_row_hash.select{|key,value| property_fields.include?(key)} 
   
    # property_data[:source] = excel_data_row_hash[:source]
    property_data[:date_base] = excel_data_row_hash[:date_base]
    
    if broadway_only.present? 
      street_value = property_data[:property_street_name].to_s
      if street_value.downcase.index('broadway').present?
        # excel_data_row_hash[:broadway_test]=true
        puts "#{property_data[:property_house_number]} #{street_value} in #{property_data[:borough]} [#{excel_data_row_hash[:source]} #{excel_data_row_hash[:date_base].to_s}]" # testing
      else
        return 0
      end
    end
    
    property = Property.where(property_data).order("date_base DESC").first_or_create

    if property.blank?
      puts "property_data failed to save = #{property_keys.concat(property_data).inspect}"
      return 0
    end
    
    saved_count += 1    

    if excel_data_row_hash[:source].index("Permit")
      permit_keys = excel_data_row_hash.select{|key,value| permit_key_fields.include?(key)}
      been_here_count = Permit.where(permit_keys).count
      permit_data_fields = property_key_fields + permit_fields
    else
      permit_keys = excel_data_row_hash.select{|key,value| permit_detail_key_fields.include?(key)}
      been_here_count = PermitDetail.where(permit_keys).count
      permit_data_fields = property_key_fields + permit_detail_fields
    end
    
    if been_here_count > 0
      puts "**** Been Here **** #{permit_keys}"
      return 0
    end
      
    permit_data = excel_data_row_hash.select {|key,value| permit_data_fields.include?(key) } 

    # HStore requires all data to be text. Make it so...
    permit_data[:spreadsheet_overflow_data] = excel_data_row_hash.reject{|key,value| permit_data.key?(key)}
    
    if excel_data_row_hash[:source].index("Permit")
      if property.permit.create(permit_data).present?
        saved_count += 1
      else
        puts "**** permit not saved ****"
        puts permit_data
        abort("**** permit not saved ****")
      end
    else
      if property.permit_detail.create(permit_data).present?
        saved_count += 1
      else
        puts "**** permit_detail not saved ****"
        puts permit_data
        abort("**** permit_detail not saved ****")
      end
    end
    
    saved_count
  end

  ##########------------------------------------- 
end 
