require 'rails_helper'

RSpec.describe "nose_shapes/show", type: :view do
  before(:each) do
    @nose_shape = assign(:nose_shape, NoseShape.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
