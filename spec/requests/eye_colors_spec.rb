require 'rails_helper'

RSpec.describe "EyeColors", type: :request do
  describe "GET /eye_colors" do
    it "works! (now write some real specs)" do
      get eye_colors_path
      expect(response).to have_http_status(200)
    end
  end
end
