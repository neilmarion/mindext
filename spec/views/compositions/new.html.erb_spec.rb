require 'spec_helper'

describe "compositions/new" do
  before(:each) do
    assign(:composition, stub_model(Composition,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new composition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => compositions_path, :method => "post" do
      assert_select "textarea#composition_content", :name => "composition[content]"
    end
  end
end
