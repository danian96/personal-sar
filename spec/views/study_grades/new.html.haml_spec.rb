require 'rails_helper'

RSpec.describe "study_grades/new", type: :view do
  before(:each) do
    assign(:study_grade, StudyGrade.new(
      :name => "MyString"
    ))
  end

  it "renders new study_grade form" do
    render

    assert_select "form[action=?][method=?]", study_grades_path, "post" do

      assert_select "input[name=?]", "study_grade[name]"
    end
  end
end
