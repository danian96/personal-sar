require 'rails_helper'

RSpec.describe "TypeOfAssignments", type: :request do
  describe "GET /type_of_assignments" do
    it "works! (now write some real specs)" do
      get type_of_assignments_path
      expect(response).to have_http_status(200)
    end
  end
end
