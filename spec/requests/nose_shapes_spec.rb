require 'rails_helper'

RSpec.describe "NoseShapes", type: :request do
  describe "GET /nose_shapes" do
    it "works! (now write some real specs)" do
      get nose_shapes_path
      expect(response).to have_http_status(200)
    end
  end
end
