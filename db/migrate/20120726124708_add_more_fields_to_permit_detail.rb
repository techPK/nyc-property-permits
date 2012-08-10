class AddMoreFieldsToPermitDetail < ActiveRecord::Migration
  def change
    
    add_column :permit_details,	:city_owned_boolean	,	:boolean		# 'City Owned'		
    add_column :permit_details,	:other_boolean	,	:boolean		# 'Other'		
    add_column :permit_details,	:professional_certification_boolean	,	:boolean		# 'Professional Cert'		
    add_column :permit_details,	:approved_date	,	:date		# 'Approved'		
    add_column :permit_details,	:assigned_date	,	:date		# 'Assigned'	 (:date)	
    add_column :permit_details,	:first_permit_date	,	:date		# 'First Permit Date'	 (:date)	
    add_column :permit_details,	:fully_filed_date	,	:date		# 'Fully Filed'	 (:date)	
    add_column :permit_details,	:fully_paid_date	,	:date		# 'Fully Paid'	 (:date)	
    add_column :permit_details,	:fully_permitted_date	,	:date		# 'Fully Permitted'		
    add_column :permit_details,	:latest_action_date	,	:date		# 'Latest Action Date'		
    add_column :permit_details,	:paid_date	,	:date		# 'Paid'		
    add_column :permit_details,	:plan_assigned_date	,	:date		# 'Plan Assigned Date'	 (:date)	
    add_column :permit_details,	:pre_filing_date	,	:date		# 'Pre- Filing Date'		
    add_column :permit_details,	:initial_cost	,	:decimal, :precision=>8, :scale=>2		# 'Initial Cost'		
    add_column :permit_details,	:total_estimated_fee	,	:decimal, :precision=>8, :scale=>2		# 'Total Est. Fee'		
    add_column :permit_details,	:applicant_license_number	,	:integer		# 'Applicant License #'	App. License #	# 'App. License #'
    add_column :permit_details,	:job_document_number	,	:integer		# 'Doc #'		
    add_column :permit_details,	:job_number	,	:integer		# 'Job #'		
    add_column :permit_details,	:applicant_first_and_last_name	,	:string		# 'Applicant First/Last Name'		
    add_column :permit_details,	:applicant_professional_title	,	:string		# 'Applicant Professional Title'	App. Pro. Title	# 'App. Pro. Title'
    add_column :permit_details,	:applicants_first_and_last_name	,	:string		# Applicant's First/Last Name		
    add_column :permit_details,	:fee_status	,	:string		# 'Fee Status'		
    add_column :permit_details,	:job_status	,	:string		# 'Job Status'		
    add_column :permit_details,	:job_type	,	:string		# 'Job Type'		
    add_column :permit_details,	:zoning_district_1	,	:string		# 'Zoning Dist1'	Zoning Distr 1	# 'Zoning Distr 1'
    add_column :permit_details,	:zoning_district_2	,	:string		# 'Zoning Dist2'	Zoning Distr 2	# 'Zoning Distr 2'
    add_column :permit_details,	:zoning_district_3	,	:string		# 'Zoning Dist3'	Zoning Distr 3	# 'Zoning Distr 3'
    add_column :permit_details,	:job_description	,	:text		# 'Job Description'		# 'Job Description 1'
    add_column :permit_details,	:other_description	,	:text		# 'Other Description'		

  end
end
