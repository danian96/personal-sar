require 'rails_helper'

RSpec.describe "mouth_shapes/index", type: :view do
  before(:each) do
    assign(:mouth_shapes, [
      MouthShape.create!(
        :name => "Name"
      ),
      MouthShape.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of mouth_shapes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
