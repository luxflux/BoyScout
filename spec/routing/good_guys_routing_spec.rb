require "rails_helper"

RSpec.describe GoodGuysController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/good_guys").to route_to("good_guys#index")
    end

    it "routes to #new" do
      expect(:get => "/good_guys/new").to route_to("good_guys#new")
    end

    it "routes to #show" do
      expect(:get => "/good_guys/1").to route_to("good_guys#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/good_guys/1/edit").to route_to("good_guys#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/good_guys").to route_to("good_guys#create")
    end

    it "routes to #update" do
      expect(:put => "/good_guys/1").to route_to("good_guys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/good_guys/1").to route_to("good_guys#destroy", :id => "1")
    end

  end
end
