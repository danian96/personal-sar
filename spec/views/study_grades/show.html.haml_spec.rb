require 'rails_helper'

RSpec.describe "study_grades/show", type: :view do
  before(:each) do
    @study_grade = assign(:study_grade, StudyGrade.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
