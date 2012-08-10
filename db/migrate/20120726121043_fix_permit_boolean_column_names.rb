class FixPermitBooleanColumnNames < ActiveRecord::Migration
  def change
    change_table :permits do |t| 
      t.rename :acts_as_superintendent	,	:acts_as_superintendent_boolean		# 'Acts As Superintendent '
      t.rename :non_profit	,	:non_profit_boolean		# 'Non-Profit'
      t.rename :residential	,	:residential_boolean		# 'Residential'
      t.rename :self_cert	,	:self_cert_boolean		# 'Self-Cert'
    end
  end

end
