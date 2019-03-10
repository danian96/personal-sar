require "rails_helper"

RSpec.describe MouthShapesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/mouth_shapes").to route_to("mouth_shapes#index")
    end

    it "routes to #new" do
      expect(:get => "/mouth_shapes/new").to route_to("mouth_shapes#new")
    end

    it "routes to #show" do
      expect(:get => "/mouth_shapes/1").to route_to("mouth_shapes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mouth_shapes/1/edit").to route_to("mouth_shapes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mouth_shapes").to route_to("mouth_shapes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mouth_shapes/1").to route_to("mouth_shapes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mouth_shapes/1").to route_to("mouth_shapes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mouth_shapes/1").to route_to("mouth_shapes#destroy", :id => "1")
    end
  end
end
