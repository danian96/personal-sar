require 'rails_helper'

RSpec.describe "SkinColors", type: :request do
  describe "GET /skin_colors" do
    it "works! (now write some real specs)" do
      get skin_colors_path
      expect(response).to have_http_status(200)
    end
  end
end
