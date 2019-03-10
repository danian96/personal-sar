require 'rails_helper'

RSpec.describe "skin_colors/show", type: :view do
  before(:each) do
    @skin_color = assign(:skin_color, SkinColor.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
