require 'rails_helper'

RSpec.describe "blood_types/index", type: :view do
  before(:each) do
    assign(:blood_types, [
      BloodType.create!(
        :name => "Name"
      ),
      BloodType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of blood_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
