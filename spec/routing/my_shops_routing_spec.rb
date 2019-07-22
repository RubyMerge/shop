require "rails_helper"

RSpec.describe MyShopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/my_shops").to route_to("my_shops#index")
    end

    it "routes to #new" do
      expect(:get => "/my_shops/new").to route_to("my_shops#new")
    end

    it "routes to #show" do
      expect(:get => "/my_shops/1").to route_to("my_shops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_shops/1/edit").to route_to("my_shops#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my_shops").to route_to("my_shops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_shops/1").to route_to("my_shops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_shops/1").to route_to("my_shops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_shops/1").to route_to("my_shops#destroy", :id => "1")
    end
  end
end
