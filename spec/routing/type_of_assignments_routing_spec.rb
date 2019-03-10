require "rails_helper"

RSpec.describe TypeOfAssignmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/type_of_assignments").to route_to("type_of_assignments#index")
    end

    it "routes to #new" do
      expect(:get => "/type_of_assignments/new").to route_to("type_of_assignments#new")
    end

    it "routes to #show" do
      expect(:get => "/type_of_assignments/1").to route_to("type_of_assignments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/type_of_assignments/1/edit").to route_to("type_of_assignments#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/type_of_assignments").to route_to("type_of_assignments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_of_assignments/1").to route_to("type_of_assignments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_of_assignments/1").to route_to("type_of_assignments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_of_assignments/1").to route_to("type_of_assignments#destroy", :id => "1")
    end
  end
end
