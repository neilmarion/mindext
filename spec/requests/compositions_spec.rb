require 'spec_helper'

describe "Compositions", :js => :true do
  describe "GET /compositions" do
    it "displays compositions" do
      Composition.create!(:content => "My Globe number +639123456789")
      visit compositions_path
      page.should have_content("My Globe number +639123456789")
    end
  end
  
  describe "POST /compositions" do
    before(:each) do
      visit compositions_path
    end
  
    it "creates compositions without tags" do
      fill_in "Content", :with => "My Globe number +639123456789"
      click_button "Save"
      #save_and_open_page
      page.should have_content("My Globe number +639123456789")
    end
    
    it "creates compositions with tags" do
      Tag.count.should == 0
      fill_in "Content", :with => "My Globe number +639123456789 #tag"
      click_button "Save"
      Tag.count.should == 1
      Tag.all.collect(&:tag).should include "#tag"
      page.should have_content("My Globe number +639123456789 #tag")
    end
  end
  
end
