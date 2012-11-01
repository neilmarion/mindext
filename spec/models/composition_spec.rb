require 'spec_helper'

describe Composition do
  it { should have_many(:compositions_tags) }
  it { should have_many(:tags) }
  it "creates tags on-create when available in content" do
    expect {
      expect {
        FactoryGirl.create(:composition, content: "Neil #tag")
      }.to change(Composition, :count).by(1)
    }.to change(Tag, :count).by(1)
    Tag.first.tag.should eq("#tag")
  end
  
  it "should not recreate tags when tag is already existing" do
    expect {
    
      expect {
        FactoryGirl.create(:composition, content: "Neil #tag")
      }.to change(Tag, :count).by(1)
      
      expect {
        FactoryGirl.create(:composition, content: "Marion #tag")
      }.to_not change(Tag, :count)
      
    }.to change(Composition, :count).by(2)
  end
end

