require "rails_helper"

RSpec.describe MyShopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to("my_shops#index")
    end
    it "routes to #contacts" do
      expect(:get => "/contacts").to route_to("my_shops#contacts")
    end
    it "routes to #index" do
      expect(:get => "/payment_delivery").to route_to("my_shops#payment_delivery")
    end
    it "routes to #index" do
      expect(:get => "/order_goods").to route_to("my_shops#order_goods")
    end
  end
end
