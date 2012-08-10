class ChangeAllBooleanTypesToString < ActiveRecord::Migration
  
  #This change is needed due to roo gem use.

  def up  
    change_table :permits do |table|
      table.change :acts_as_superintendent_boolean, :string
      table.change :non_profit_boolean, :string
      table.change :residential_boolean, :string
      table.change :self_cert_boolean, :string
    end
    
    change_table :permit_details do |table|
      table.change :city_owned_boolean, :string
      table.change :other_boolean, :string
      table.change :professional_certification_boolean, :string
    end
  end

  def down # unable to make ProgreSQL do this 'down'...
    change_table :permits do |table|
      table.change :acts_as_superintendent_boolean, :boolean
      table.change :non_profit_boolean, :boolean
      table.change :residential_boolean, :boolean
      table.change :self_cert_boolean, :boolean
    end
    
    change_table :permit_details do |table|
      table.change :city_owned_boolean, :boolean
      table.change :other_boolean, :boolean
      table.change :professional_certification_boolean, :boolean
    end
  end
end
