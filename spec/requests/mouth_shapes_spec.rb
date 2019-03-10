require 'rails_helper'

RSpec.describe "MouthShapes", type: :request do
  describe "GET /mouth_shapes" do
    it "works! (now write some real specs)" do
      get mouth_shapes_path
      expect(response).to have_http_status(200)
    end
  end
end
