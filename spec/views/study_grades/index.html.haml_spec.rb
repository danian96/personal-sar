require 'rails_helper'

RSpec.describe "study_grades/index", type: :view do
  before(:each) do
    assign(:study_grades, [
      StudyGrade.create!(
        :name => "Name"
      ),
      StudyGrade.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of study_grades" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
