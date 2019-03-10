require 'rails_helper'

RSpec.describe "BloodTypes", type: :request do
  describe "GET /blood_types" do
    it "works! (now write some real specs)" do
      get blood_types_path
      expect(response).to have_http_status(200)
    end
  end
end
