require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :count => 2,
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :city => "City",
        :stock => "Stock"
      ),
      Order.create!(
        :count => 2,
        :name => "Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :city => "City",
        :stock => "Stock"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Stock".to_s, :count => 2
  end
end
