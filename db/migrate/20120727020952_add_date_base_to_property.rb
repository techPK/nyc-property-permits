class AddDateBaseToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :date_base, :date
    add_column :permits, :date_base, :date
    add_column :permit_details, :date_base, :date
  end
end
