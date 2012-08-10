class AddKeyFieldsToPermit < ActiveRecord::Migration
  def change
    add_column :permits,	:bin_integer,	:float		# 'Bin #'			
    add_column :permits,	:borough,	:string		# 'Borough'			
    add_column :permits,	:community_board_intger,	:float		# 'Community Board'	Community - Board	# 'Community - Board'	Comm- Board
    add_column :permits,	:property_block_integer,	:float		# 'Block'			
    add_column :permits,	:property_lot_integer	,	:float		# 'Lot'			
    add_column :permits,	:property_house_number	,	:string		# 'House # '			
    add_column :permits,	:property_street_name	,	:string		# 'Street Name'			
    add_column :permits,	:property_zip_code	,	:string		# 'Zip Code'	
  end
end
