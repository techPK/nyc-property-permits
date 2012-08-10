require 'spec_helper'

describe Permit do
  [:permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      Permit.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end

  [:property].each do |symbol|
    it "should belongs_to #{symbol.to_s.camelize}" do
      Permit.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end   
end
