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
      Tag.all.collect(&:tag).should include '#tag'
      #how to do this??? checking if a link has been made?
      page.should have_content "My Globe number +639123456789 #tag"
    end
  end
  
  describe "GET /search" do
    before(:each) do
      @composition_1 = FactoryGirl.create(:composition, content: "Neil")
      @composition_2 = FactoryGirl.create(:composition, content: "dela Cruz")
      visit compositions_path
    end
    
    it "searches composition" do
      fill_in "search_compositions", :with => @composition_1.content
      page.should have_content(@composition_1.content)
      page.should_not have_content(@composition_2.content)
    end
  end
  
  describe "get compositions per tag" do
    before(:each) do
      composition_1 = FactoryGirl.create(:composition, content: "Neil #tag1")
      composition_2 = FactoryGirl.create(:composition, content: "dela Cruz #tag2")
      visit compositions_path
    end
  end
  
end
