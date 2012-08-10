module nyc_permit_fields
  def give_property_fields
    property_fields = []
    property_fields << 'Bin #'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Bldg Type'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Block'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Borough'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Building Type'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'City, State, Zip'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Comm- Board'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Community - Board'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Community Board'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'House #    '.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Job #'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Job Type'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Lot'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Non-Profit'.strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's Business Name".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's Business Type".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's First & Last Name".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's House Street".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's Name".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's  Phone #".strip.squeeze(' ').downcase.to_sym
    property_fields << "Owner's Phone #".strip.squeeze(' ').downcase.to_sym
    property_fields << 'Owner Type'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Site Fill'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Special Dist Name'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Special Distr 1'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Special Distr 2 '.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Special District 1'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Special District 2'.strip.squeeze(' ').downcase.to_sym
    property_fields << 'Street Name'.strip.squeeze(' ').downcase.to_sym
  end
  
  def give_permit_fields
    permit_fields = []
    permit_fields << 'Acts As Superintendent '.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Expiration Date'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Filing Date'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Filing Status'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'HIC License'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Issuance Date'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Job doc. #'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Job Start Date'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Oil Gas'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Permit Sequence #'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Permit Status'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Permit Subtype'.strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's Business Name".strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's First & Last Name".strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's License #".strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's License Type".strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's Other Title".strip.squeeze(' ').downcase.to_sym
    permit_fields << "Permittee's Phone #".strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Permit Type'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Residential'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Self-Cert'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Site Safety Mgr Business Name'.strip.squeeze(' ').downcase.to_sym
    permit_fields << "Site Safety Mgr's Name ".strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Superintendent Business Name'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Superintendent First & Last Name'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Work Type'.strip.squeeze(' ').downcase.to_sym
    permit_fields << 'Zip Code'.strip.squeeze(' ').downcase.to_sym
  end

  def give_permit_detail_fields
    permit_detail_fields = []
    permit_detail_fields << 'Applicant First/Last Name'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Applicant License #'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Applicant Professional Title'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << "Applicant's First/Last Name".strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'App. License #'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'App. Pro. Title'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Approved'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'City Owned'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Doc #'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'eFiling Filed'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Fee Status'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Fully Permitted'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Initial Cost'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Job Description 1'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Job Description'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Landmarked'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Landmark'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Latest Action Date'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Little e'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Other Description'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Other'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Paid'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Pre- Filing Date'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Professional Cert'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Total Est. Fee'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Dist1'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Dist2'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Dist3'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Distr 1'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Distr 2'.strip.squeeze(' ').downcase.to_sym
    permit_detail_fields << 'Zoning Distr 3'.strip.squeeze(' ').downcase.to_sym
  end
  
  def give_more_permit_detail_fields 
    more_permit_detail_fields = []
    more_permit_detail_fields << 'Adult Estab'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Assigned'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Boiler'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Cluster '.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Curb Cut'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Enlargement SQ Footage'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Equipment'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Existing Dwelling Units'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Existing Height'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'ExistingNo. of Stories'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Existing Occupancy'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Existing Zoning Sqft'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fire Alarm'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fire Suppression'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'First Permit  Date'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fuel Burning'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fuel Storage'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fully Filed'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Fully Paid'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Horizontal Enlrgmt'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Inside Building Line'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Loft Board'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Mechanical'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'PC Filed'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Plan Assigned Date'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Plumbing'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Proposed Dwelling Units'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Proposed Height'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Proposed No. of Stories'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Proposed Occupancy'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Proposed Zoning Sqft'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Advertising'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Changeable Copy'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Const Type'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Dist from Highway '.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Dist from Park'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Height Curb'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Height Roof'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Illumination'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Illumination Type'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Near Highway '.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Near Park '.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Non-Conforming'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign OAC No.'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign OAC Registration'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Projection'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign SQ Footage'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Type'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sign Weight'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Sprinkler'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Standpipe'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Street Frontage'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Text on Sign'.strip.squeeze(' ').downcase.to_sym
    more_permit_detail_fields << 'Vertical Enlrgmt'.strip.squeeze(' ').downcase.to_sym
  end
end
