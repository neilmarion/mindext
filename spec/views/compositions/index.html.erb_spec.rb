require 'spec_helper'

describe "compositions/index" do
  before(:each) do
    assign(:compositions, [
      stub_model(Composition,
        :content => "MyText"
      ),
      stub_model(Composition,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of compositions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
