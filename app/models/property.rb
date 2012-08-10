class Property < ActiveRecord::Base
  has_many :permit
  has_many :permit_detail 
  # attr_accessible :title, :body
  attr_protected :id
end
