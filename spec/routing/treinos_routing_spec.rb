require "rails_helper"

RSpec.describe TreinosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/treinos").to route_to("treinos#index")
    end

    it "routes to #new" do
      expect(:get => "/treinos/new").to route_to("treinos#new")
    end

    it "routes to #show" do
      expect(:get => "/treinos/1").to route_to("treinos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/treinos/1/edit").to route_to("treinos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/treinos").to route_to("treinos#create")
    end

    it "routes to #update" do
      expect(:put => "/treinos/1").to route_to("treinos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/treinos/1").to route_to("treinos#destroy", :id => "1")
    end

  end
end
