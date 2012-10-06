require 'spec_helper'

describe "compositions/show" do
  before(:each) do
    @composition = assign(:composition, stub_model(Composition,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
