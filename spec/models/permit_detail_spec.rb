require 'spec_helper'

describe PermitDetail do

  [:permit, :property].each do |symbol|
    it "should belongs_to #{symbol.to_s}" do
      PermitDetail.reflect_on_association(symbol).macro.should be(:belongs_to)
    end
  end  

end







