require 'rails_helper'

RSpec.describe "eye_colors/show", type: :view do
  before(:each) do
    @eye_color = assign(:eye_color, EyeColor.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
