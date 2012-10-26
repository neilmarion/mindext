require 'spec_helper'

describe "compositions/index" do
  before(:each) do
    assign(:compositions,
      [
        stub_model(Composition, :content => "MyText"),
        stub_model(Composition, :content => "MyText")
      ]
    )
    
    assign(:tags,
      [
        stub_model(Tag, :tag => "#tag"),
      ]
    )
    
    assign(:new_composition, [stub_model(Composition)] )
  end

  it "renders a list of compositions" do
    render
    
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
  
  it "renders new composition form" do
    render

    assert_select "form", :action => compositions_path, :method => "post", :remote => "true" do
      assert_select "input#composition_content", :name => "composition[content]"
    end
  end
  
end
