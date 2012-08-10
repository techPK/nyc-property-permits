class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.references :property

      t.timestamps
    end
    add_index :permits, :property_id
  end
end
