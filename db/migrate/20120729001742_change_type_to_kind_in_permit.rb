class ChangeTypeToKindInPermit < ActiveRecord::Migration
  def up
    change_table :permits do |table|
      table.rename :job_type, :job_kind
      table.rename :permittees_license_type, :permittees_license_kind
      table.rename :permit_type, :permit_kind
    end
    change_table :permit_details do |table|
      table.rename :job_type, :job_kind
    end
  end

  def down
    change_table :permits do |table|
      table.rename :job_kind, :job_type
      table.rename :permittees_license_kind, :permittees_license_type
      table.rename :permit_kind, :permit_type
    end
    change_table :permit_details do |table|
      table.rename :job_kind, :job_type
    end
  end
end
