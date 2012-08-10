class AddKeyFieldsToPermitAndPermitDetails < ActiveRecord::Migration

  def change
    add_column :permit_details,	:bin_integer,	:float		# 'Bin #'			
    add_column :permit_details,	:borough,	:string		# 'Borough'			
    add_column :permit_details,	:community_board_intger,	:float		# 'Community Board'	Community - Board	# 'Community - Board'	Comm- Board
    add_column :permit_details,	:property_block_integer,	:float		# 'Block'			
    add_column :permit_details,	:property_lot_integer	,	:float		# 'Lot'			
    add_column :permit_details,	:property_house_number	,	:string		# 'House # '			
    add_column :permit_details,	:property_street_name	,	:string		# 'Street Name'			
    add_column :permit_details,	:property_zip_code	,	:string		# 'Zip Code'	
  end
end
