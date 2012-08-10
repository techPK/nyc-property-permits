class Permit < ActiveRecord::Base
  serialize :spreadsheet_overflow_data, ActiveRecord::Coders::Hstore
  has_many :permit_detail
  belongs_to :property
  attr_protected :id
  # attr_accessible :title, :body
end
