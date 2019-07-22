require 'rails_helper'

RSpec.describe "my_shops/index", type: :view do
  before(:each) do
    assign(:my_shops, [
      MyShop.create!(
        :page_name => "Page Name",
        :page => "MyText"
      ),
      MyShop.create!(
        :page_name => "Page Name",
        :page => "MyText"
      )
    ])
  end

  it "renders a list of my_shops" do
    render
    assert_select "tr>td", :text => "Page Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
