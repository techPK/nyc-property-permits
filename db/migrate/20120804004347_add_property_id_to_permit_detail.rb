class AddPropertyIdToPermitDetail < ActiveRecord::Migration
  def change
    add_column :permit_details, :property_id, :integer
  end
end
