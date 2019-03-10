require 'rails_helper'

RSpec.describe "CivilStates", type: :request do
  describe "GET /civil_states" do
    it "works! (now write some real specs)" do
      get civil_states_path
      expect(response).to have_http_status(200)
    end
  end
end
