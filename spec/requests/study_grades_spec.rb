require 'rails_helper'

RSpec.describe "StudyGrades", type: :request do
  describe "GET /study_grades" do
    it "works! (now write some real specs)" do
      get study_grades_path
      expect(response).to have_http_status(200)
    end
  end
end
