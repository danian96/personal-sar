require 'rails_helper'

RSpec.describe "mouth_shapes/show", type: :view do
  before(:each) do
    @mouth_shape = assign(:mouth_shape, MouthShape.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
