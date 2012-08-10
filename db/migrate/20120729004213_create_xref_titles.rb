class CreateXrefTitles < ActiveRecord::Migration
  def change
    create_table :xref_titles do |t|
      t.string :computed_key
      t.string :subsitute_key
      t.string :key_source
      t.timestamps
    end
  end
end
