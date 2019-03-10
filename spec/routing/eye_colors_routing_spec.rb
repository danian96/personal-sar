require "rails_helper"

RSpec.describe EyeColorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/eye_colors").to route_to("eye_colors#index")
    end

    it "routes to #new" do
      expect(:get => "/eye_colors/new").to route_to("eye_colors#new")
    end

    it "routes to #show" do
      expect(:get => "/eye_colors/1").to route_to("eye_colors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eye_colors/1/edit").to route_to("eye_colors#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/eye_colors").to route_to("eye_colors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/eye_colors/1").to route_to("eye_colors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/eye_colors/1").to route_to("eye_colors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eye_colors/1").to route_to("eye_colors#destroy", :id => "1")
    end
  end
end
