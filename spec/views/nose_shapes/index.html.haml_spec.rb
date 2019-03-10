require 'rails_helper'

RSpec.describe "nose_shapes/index", type: :view do
  before(:each) do
    assign(:nose_shapes, [
      NoseShape.create!(
        :name => "Name"
      ),
      NoseShape.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of nose_shapes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
