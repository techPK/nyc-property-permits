class CreateNycGovExcelWebfiles < ActiveRecord::Migration
  def change
    create_table :nyc_gov_excel_webfiles do |t|
      t.string   "type"
      t.date     "date_base"
      t.text     "full_url"
      t.boolean  "processed"
      t.boolean  "broadway_test"
      t.timestamps
    end
  end
end
