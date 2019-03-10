require "rails_helper"

RSpec.describe SkinColorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/skin_colors").to route_to("skin_colors#index")
    end

    it "routes to #new" do
      expect(:get => "/skin_colors/new").to route_to("skin_colors#new")
    end

    it "routes to #show" do
      expect(:get => "/skin_colors/1").to route_to("skin_colors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skin_colors/1/edit").to route_to("skin_colors#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/skin_colors").to route_to("skin_colors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skin_colors/1").to route_to("skin_colors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skin_colors/1").to route_to("skin_colors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skin_colors/1").to route_to("skin_colors#destroy", :id => "1")
    end
  end
end
