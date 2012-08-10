class CreatePermitDetails < ActiveRecord::Migration
  def change
    create_table :permit_details do |t|
      t.references :permit
      t.string :type

      t.timestamps
    end
    add_index :permit_details, :permit_id
  end
end
