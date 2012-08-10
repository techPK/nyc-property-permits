class ChangeAllNumericTypesToFloat < ActiveRecord::Migration
  
  #This change is needed due to roo gem use.
  
  def up
    change_table :properties do |table|
      table.change :bin_number, :float
      table.rename :bin_number, :bin_integer
      
      table.change :building_kind, :float
      table.rename :building_kind, :building_kind_integer
      
      table.change :community_board, :float
      table.rename :community_board, :community_board_integer
      
      table.change :property_block_number, :float
      table.rename :property_block_number, :property_block_integer
      
      table.change :property_lot_number, :float
      table.rename :property_lot_number, :property_lot_integer
    end  
    
    change_table :permits do |table|
      table.change :job_number, :float
      table.rename :job_number, :job_integer
      
      table.change :permit_sequence_number, :float
      table.rename :permit_sequence_number, :permit_sequence_integer
      
      table.change :permittees_license_number, :float
      table.rename :permittees_license_number, :permittees_license_integer
    end
    
    change_table :permit_details do |table|
      table.change :initial_cost, :float
      table.rename :initial_cost, :initial_cost_decimal
      
      table.change :total_estimated_fee, :float
      table.rename :total_estimated_fee, :total_estimated_fee_decimal
      
      table.change :applicant_license_number, :float
      table.rename :applicant_license_number, :applicant_license_integer
      
      table.change :job_document_number, :float
      table.rename :job_document_number, :job_document_integer
      
      table.change :job_number, :float
      table.rename :job_number, :job_integer
    end               
  end

  def down
    change_table :properties do |table|
      table.change :bin_integer, :integer
      table.rename :bin_integer, :bin_number
      
      table.change :building_kind_integer, :integer
      table.rename :building_kind_integer, :building_kind
      
      table.change :community_board_integer, :integer
      table.rename :community_board_integer, :community_board
      
      table.change :property_block_integer, :integer
      table.rename :property_block_integer, :property_block_number
      
      table.change :property_lot_integer, :integer
      table.rename :property_lot_integer, :property_lot_number
    end
    
    change_table :permits do |table|
      table.change :job_integer, :integer
      table.rename :job_integer, :job_number
      
      table.change :permit_sequence_integer, :integer
      table.rename :permit_sequence_integer, :permit_sequence_number
      
      table.change :permittees_license_integer, :integer
      table.rename :permittees_license_integer, :permittees_license_number
    end
    
    change_table :permit_details do |table|
      table.change :initial_cost_decimal, :decimal
      table.rename :initial_cost_decimal, :initial_cost
      
      table.change :total_estimated_fee_decimal, :decimal
      table.rename :total_estimated_fee_decimal, :total_estimated_fee
      
      table.change :applicant_license_integer, :integer
      table.rename :applicant_license_integer, :applicant_license_number
      
      table.change :job_document_integer, :integer
      table.rename :job_document_integer, :job_document_number
      
      table.change :job_integer, :integer
      table.rename :job_integer, :job_number
    end          
  end
end
