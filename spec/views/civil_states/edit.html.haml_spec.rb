require 'rails_helper'

RSpec.describe "civil_states/edit", type: :view do
  before(:each) do
    @civil_state = assign(:civil_state, CivilState.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit civil_state form" do
    render

    assert_select "form[action=?][method=?]", civil_state_path(@civil_state), "post" do

      assert_select "input[name=?]", "civil_state[name]"
    end
  end
end
