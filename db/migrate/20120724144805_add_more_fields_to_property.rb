class AddMoreFieldsToProperty < ActiveRecord::Migration
  def change

    add_column :properties,	:bin_number	,	:integer		# 'Bin #'			
    add_column :properties,	:borough	,	:string		# 'Borough'			
    add_column :properties,	:building_kind	,	:integer		# 'Bldg Type'	Building Type	# 'Building Type'	
    add_column :properties,	:community_board	,	:integer		# 'Community Board'	Community - Board	# 'Community - Board'	Comm- Board
    add_column :properties,	:owners_business_name	,	:string		# Owner's Business Name			
    add_column :properties,	:owners_business_type	,	:string		# Owner's Business Type	Owner Type	# 'Owner Type'	
    add_column :properties,	:owners_city_state_zip	,	:string		# 'City, State, Zip'			
    add_column :properties,	:owners_first_and_last_name	,	:string		# Owner's First & Last Name	Owner's Name	# Owner's Name	
    add_column :properties,	:owners_house_street	,	:string		# Owner's House Street			
    add_column :properties,	:owners_phone_number	,	:string		# Owner's Phone #	Owner's Phone #	# Owner's Phone #	
    add_column :properties,	:property_block_number	,	:integer		# 'Block'			
    add_column :properties,	:property_lot_number	,	:integer		# 'Lot'			
    add_column :properties,	:property_house_number	,	:string		# 'House # '			
    add_column :properties,	:property_street_name	,	:string		# 'Street Name'			
    add_column :properties,	:property_zip_code	,	:string		# 'Zip Code'			
    add_column :properties,	:special_district_name_0	,	:string		# 'Special Dist Name'			
    add_column :properties,	:special_district_name_1	,	:string		# 'Special Distr 1'	Special District 1	# 'Special District 1'	
    add_column :properties,	:special_district_name_2	,	:string		# 'Special Distr 2 '	Special District 2	# 'Special District 2'	

  end
end
