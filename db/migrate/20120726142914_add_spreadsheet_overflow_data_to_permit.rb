class AddSpreadsheetOverflowDataToPermit < ActiveRecord::Migration
  def up
    add_column :permits, :spreadsheet_overflow_data, :hstore
    execute "CREATE INDEX permits_gin_spreadsheet_overflow_data ON permits USING GIN(spreadsheet_overflow_data)"
  end
  
  def down
    execute "DROP INDEX permits_gin_spreadsheet_overflow_data"
    remove_column :permits, :spreadsheet_overflow_data
  end
end
