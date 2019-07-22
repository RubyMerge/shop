require 'rails_helper'

RSpec.describe "my_shops/new", type: :view do
  before(:each) do
    assign(:my_shop, MyShop.new(
      :page_name => "MyString",
      :page => "MyText"
    ))
  end

  it "renders new my_shop form" do
    render

    assert_select "form[action=?][method=?]", my_shops_path, "post" do

      assert_select "input[name=?]", "my_shop[page_name]"

      assert_select "textarea[name=?]", "my_shop[page]"
    end
  end
end
