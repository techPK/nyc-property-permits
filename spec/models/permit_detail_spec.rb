require 'spec_helper'

describe PermitDetail do
  [:more_permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      PermitDetail.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end

  [:permit].each do |symbol|
    it "should belongs_to #{symbol.to_s}" do
      PermitDetail.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end  
end

describe Job do
  [:more_permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      Job.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end

  [:permit].each do |symbol|
    it "should belongs_to #{symbol.to_s}" do
      Job.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end  
end

describe Sign do
  [:more_permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      Sign.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end

  [:permit].each do |symbol|
    it "should belongs_to #{symbol.to_s}" do
      Sign.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end  
end

describe Antenna do
  [:more_permit_detail].each do |symbol|
    it "should have many #{symbol.to_s}" do
      Antenna.reflect_on_association(symbol).macro.should be(:has_many)
    end
  end

  [:permit].each do |symbol|
    it "should belongs_to #{symbol.to_s}" do
      Antenna.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end  
end

