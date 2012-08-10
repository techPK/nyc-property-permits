class PermitDetail < ActiveRecord::Base
  serialize :spreadsheet_overflow_data, ActiveRecord::Coders::Hstore
  belongs_to :property
  belongs_to :permit
  # attr_accessible :type
  attr_protected :id, :type
end

class Job < PermitDetail
  attr_protected :id, :type
end

class Sign < PermitDetail
  attr_protected :id, :type
end

class Antenna < PermitDetail
  attr_protected :id, :type
end
