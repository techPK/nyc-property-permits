class AddSourceToPermit < ActiveRecord::Migration
  def change
    add_column :permits, :source, :string
    add_column :permit_details, :source, :string
  end
end
