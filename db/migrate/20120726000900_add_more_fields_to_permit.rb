class AddMoreFieldsToPermit < ActiveRecord::Migration
  def change
    
    add_column :permits,	:acts_as_superintendent	,	:boolean		# 'Acts As Superintendent '
    add_column :permits,	:expiration_date	,	:date		# 'Expiration Date'
    add_column :permits,	:filing_date	,	:date		# 'Filing Date'
    add_column :permits,	:filing_status	,	:string		# 'Filing Status'
    add_column :permits,	:home_improvement_contractor_license	,	:string		# 'HIC License'
    add_column :permits,	:issuance_date	,	:date		# 'Issuance Date'
    add_column :permits,	:job_document_number	,	:string		# 'Job doc. #'
    add_column :permits,	:job_number	,	:integer		# 'Job #'
    add_column :permits,	:job_start_date	,	:date		# 'Job Start Date'
    add_column :permits,	:job_type	,	:string		# 'Job Type'
    add_column :permits,	:non_profit	,	:boolean		# 'Non-Profit'
    add_column :permits,	:oil_gas	,	:string		# 'Oil Gas'
    add_column :permits,	:permit_sequence_number	,	:integer		# 'Permit Sequence #'
    add_column :permits,	:permit_status	,	:string		# 'Permit Status'
    add_column :permits,	:permit_subtype	,	:string		# 'Permit Subtype'
    add_column :permits,	:permittees_business_name	,	:string		# Permittee's Business Name
    add_column :permits,	:permittees_first_and_last_name	,	:string		# Permittee's First & Last Name
    add_column :permits,	:permittees_license_number	,	:integer		# Permittee's License #
    add_column :permits,	:permittees_license_type	,	:string		# Permittee's License Type
    add_column :permits,	:permittees_other_title	,	:string		# Permittee's Other Title
    add_column :permits,	:permittees_phone_number	,	:string		# Permittee's Phone #
    add_column :permits,	:permit_type	,	:string		# 'Permit Type'
    add_column :permits,	:residential	,	:boolean		# 'Residential'
    add_column :permits,	:self_cert	,	:boolean		# 'Self-Cert'
    add_column :permits,	:site_fill	,	:string		# 'Site Fill'
    add_column :permits,	:site_safety_manager_business_name	,	:string		# 'Site Safety Mgr Business Name'
    add_column :permits,	:site_safety_managers_name	,	:string		# Site Safety Mgr's Name
    add_column :permits,	:superintendent_business_name	,	:string		# 'Superintendent Business Name'
    add_column :permits,	:superintendent_first_and_last_name	,	:string		# 'Superintendent First & Last Name'
    add_column :permits,	:work_kind	,	:string		# 'Work Type'

  end
end
