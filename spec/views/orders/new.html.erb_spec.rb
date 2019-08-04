require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :count => 1,
      :name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :city => "MyString",
      :stock => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

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
