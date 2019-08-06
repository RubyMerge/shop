require 'rails_helper'

RSpec.describe "MyShops", type: :request do
  let!(:exchange_rates) { FactoryBot.create(:exchange_rate, id: 1)}
  describe "GET /my_shops" do
    it "works! (now write some real specs)" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
