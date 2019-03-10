require 'rails_helper'

RSpec.describe "study_grades/edit", type: :view do
  before(:each) do
    @study_grade = assign(:study_grade, StudyGrade.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit study_grade form" do
    render

    assert_select "form[action=?][method=?]", study_grade_path(@study_grade), "post" do

      assert_select "input[name=?]", "study_grade[name]"
    end
  end
end
