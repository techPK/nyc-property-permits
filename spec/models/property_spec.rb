require 'spec_helper'

describe Property do
  [:permit, :permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      Property.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end
  
end
