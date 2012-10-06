require 'spec_helper'

describe "Compositions" do
  describe "GET /compositions" do
    it "displays compositions" do
      Composition.create!(:content => "My Globe number +639123456789")
      visit compositions_path
      page.should have_content("My Globe number +639123456789")
    end
  end
  
  describe "POST /compositions" do
    it "creates compositions" do
      visit compositions_path
      fill_in "Content", :with => "My Globe number +639123456789"
      click_button "Save"
      save_and_open_page
      page.should have_content("Composition was successfully created.")
      page.should have_content("My Globe number +639123456789")
    end
  end
end
