require 'rails_helper'

RSpec.describe "my_shops/index", type: :view do
 let!(:shop) { FactoryBot.create(:my_shop)}

  it "renders a list of my_shops" do
    render
    assert_select "h1", :text => "MyText".to_s
  end
end
