require "rails_helper"

RSpec.describe NoseShapesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/nose_shapes").to route_to("nose_shapes#index")
    end

    it "routes to #new" do
      expect(:get => "/nose_shapes/new").to route_to("nose_shapes#new")
    end

    it "routes to #show" do
      expect(:get => "/nose_shapes/1").to route_to("nose_shapes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nose_shapes/1/edit").to route_to("nose_shapes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/nose_shapes").to route_to("nose_shapes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nose_shapes/1").to route_to("nose_shapes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nose_shapes/1").to route_to("nose_shapes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nose_shapes/1").to route_to("nose_shapes#destroy", :id => "1")
    end
  end
end
