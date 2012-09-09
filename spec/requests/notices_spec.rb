require 'spec_helper'

describe "Notices" do
  %w(Home About Contact Terms Technology).each do |page_name|
	  describe "#{page_name} page" do
	    it "should have the content '#{page_name}" do
	      visit "/notices/#{page_name.downcase}"
	      page.should have_content("#{page_name}")
	    end
	    it "'#{page_name}' should have the correct title." do
	      visit "/notices/#{page_name.downcase}"
	      page.should have_selector('title', \
	      			text:"NYC Property Permit Information | #{page_name}")
	    end
	  end
	end
end
