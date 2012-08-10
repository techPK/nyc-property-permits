class AddMorePermitDetailToPermitDetail < ActiveRecord::Migration
  def up
    add_column :permit_details, :more_permit_detail, :hstore
    execute "CREATE INDEX permit_details_gin_more_permit_detail ON permit_details USING GIN(more_permit_detail)"
    
    add_column :permit_details, :spreadsheet_overflow_data, :hstore
    execute "CREATE INDEX permit_details_gin_spreadsheet_overflow_data ON permit_details USING GIN(spreadsheet_overflow_data)"
  end
  
  def down
    execute "DROP INDEX permit_details_gin_spreadsheet_overflow_data"
    remove_column :permit_details, :spreadsheet_overflow_data
    
    execute "DROP INDEX permit_details_gin_more_permit_detail"
    remove_column :permit_details, :more_permit_detail  
  end
end
