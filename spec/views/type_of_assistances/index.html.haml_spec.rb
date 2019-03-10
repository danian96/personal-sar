require 'rails_helper'

RSpec.describe "type_of_assistances/index", type: :view do
  before(:each) do
    assign(:type_of_assistances, [
      TypeOfAssistance.create!(
        :name => "Name"
      ),
      TypeOfAssistance.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of type_of_assistances" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
