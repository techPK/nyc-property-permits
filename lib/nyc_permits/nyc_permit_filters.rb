def process_permit_detail_data(property, property_key_fields, excel_data_row_hash, broadway_only=nil)
  
  permit_detail_non_key_fields = [
    :city_owned_boolean,
    :other_boolean,
    :professional_certification_boolean,
    :approved_date,
    :assigned_date,
    :first_permit_date,
    :fully_filed_date,
    :fully_paid_date,
    :fully_permitted_date,
    :latest_action_date,
    :paid_date,
    :plan_assigned_date,
    :pre_filing_date,
    :initial_cost_decimal,
    :total_estimated_fee_decimal,
    :applicant_license_integer,
    :job_document_integer,
    :job_integer,
    :applicant_first_and_last_name,
    :applicant_professional_title,
    :applicants_first_and_last_name,
    :fee_status,
    :job_status,
    :job_kind,
    :zoning_district_1,
    :zoning_district_2,
    :zoning_district_3,
    :job_description,
    :other_description,
    :bin_integer,
    :borough,
    :community_board_integer,
    :property_block_integer,
    :property_lot_integer,
    :property_house_number,
    :property_street_name,
    :property_zip_code, 
    :date_base,
    :source
    ]
    
  permit_fields = property_key_fields.merge(permit_detail_non_key_fields)
  permit_detail_data = excel_data_row_hash.select {|key,value| permit_fields.key?(key) }
  
  if broadway_only.present? && excel_data_row_hash.key?(:permit_street_name)
    street_value = excel_data_row_hash[:permit_street_name]
    if  street_value.downcase.rindex('broadway').present?
      broadway_found = true
    else
      broadway_found = false
      return nil
    end
  end
      
 # HStore requires all data to be text. Make it so...
  permit_detail_data[:spreadsheet_overflow_data] = excel_data_row_hash.reject{|key,value| permit_detail_data.key?(key)}
  permit_detail_data[:spreadsheet_overflow_data].each{|key,value| value = value.to_s}
  
  permit = property.permit_detail.create(permit_detail_data)
  
  if permit.nil?
    puts "permit_detail_data failed to save = #{permit_detail_data.inspect}"
  end

end

  ##########-------------------------------------
