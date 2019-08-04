require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :count => 1,
      :name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :city => "MyString",
      :stock => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[count]"

      assert_select "input[name=?]", "order[name]"

      assert_select "input[name=?]", "order[last_name]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[phone]"

      assert_select "input[name=?]", "order[city]"

      assert_select "input[name=?]", "order[stock]"
    end
  end
end
