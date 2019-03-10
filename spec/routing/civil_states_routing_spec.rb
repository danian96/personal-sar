require "rails_helper"

RSpec.describe CivilStatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/civil_states").to route_to("civil_states#index")
    end

    it "routes to #new" do
      expect(:get => "/civil_states/new").to route_to("civil_states#new")
    end

    it "routes to #show" do
      expect(:get => "/civil_states/1").to route_to("civil_states#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/civil_states/1/edit").to route_to("civil_states#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/civil_states").to route_to("civil_states#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/civil_states/1").to route_to("civil_states#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/civil_states/1").to route_to("civil_states#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/civil_states/1").to route_to("civil_states#destroy", :id => "1")
    end
  end
end
