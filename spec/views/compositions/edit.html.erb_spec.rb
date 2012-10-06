require 'spec_helper'

describe "compositions/edit" do
  before(:each) do
    @composition = assign(:composition, stub_model(Composition,
      :content => "MyText"
    ))
  end

  it "renders the edit composition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => compositions_path(@composition), :method => "post" do
      assert_select "textarea#composition_content", :name => "composition[content]"
    end
  end
end
