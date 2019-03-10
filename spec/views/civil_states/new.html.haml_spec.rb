require 'rails_helper'

RSpec.describe "civil_states/new", type: :view do
  before(:each) do
    assign(:civil_state, CivilState.new(
      :name => "MyString"
    ))
  end

  it "renders new civil_state form" do
    render

    assert_select "form[action=?][method=?]", civil_states_path, "post" do

      assert_select "input[name=?]", "civil_state[name]"
    end
  end
end
