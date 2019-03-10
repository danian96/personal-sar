require "rails_helper"

RSpec.describe TypeOfAssistancesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/type_of_assistances").to route_to("type_of_assistances#index")
    end

    it "routes to #new" do
      expect(:get => "/type_of_assistances/new").to route_to("type_of_assistances#new")
    end

    it "routes to #show" do
      expect(:get => "/type_of_assistances/1").to route_to("type_of_assistances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/type_of_assistances/1/edit").to route_to("type_of_assistances#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/type_of_assistances").to route_to("type_of_assistances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_of_assistances/1").to route_to("type_of_assistances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_of_assistances/1").to route_to("type_of_assistances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_of_assistances/1").to route_to("type_of_assistances#destroy", :id => "1")
    end
  end
end
