require "rails_helper"

RSpec.describe StudyGradesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/study_grades").to route_to("study_grades#index")
    end

    it "routes to #new" do
      expect(:get => "/study_grades/new").to route_to("study_grades#new")
    end

    it "routes to #show" do
      expect(:get => "/study_grades/1").to route_to("study_grades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/study_grades/1/edit").to route_to("study_grades#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/study_grades").to route_to("study_grades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/study_grades/1").to route_to("study_grades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/study_grades/1").to route_to("study_grades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/study_grades/1").to route_to("study_grades#destroy", :id => "1")
    end
  end
end
