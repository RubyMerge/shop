require 'rails_helper'

RSpec.describe "my_shops/edit", type: :view do
  before(:each) do
    @my_shop = assign(:my_shop, MyShop.create!(
      :page_name => "MyString",
      :page => "MyText"
    ))
  end

  it "renders the edit my_shop form" do
    render

    assert_select "form[action=?][method=?]", my_shop_path(@my_shop), "post" do

      assert_select "input[name=?]", "my_shop[page_name]"

      assert_select "textarea[name=?]", "my_shop[page]"
    end
  end
end
