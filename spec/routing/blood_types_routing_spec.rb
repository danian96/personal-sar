require "rails_helper"

RSpec.describe BloodTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/blood_types").to route_to("blood_types#index")
    end

    it "routes to #new" do
      expect(:get => "/blood_types/new").to route_to("blood_types#new")
    end

    it "routes to #show" do
      expect(:get => "/blood_types/1").to route_to("blood_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/blood_types/1/edit").to route_to("blood_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/blood_types").to route_to("blood_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/blood_types/1").to route_to("blood_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/blood_types/1").to route_to("blood_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/blood_types/1").to route_to("blood_types#destroy", :id => "1")
    end
  end
end
