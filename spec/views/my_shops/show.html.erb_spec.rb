require 'rails_helper'

RSpec.describe "my_shops/show", type: :view do
  before(:each) do
    @my_shop = assign(:my_shop, MyShop.create!(
      :page_name => "Page Name",
      :page => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Page Name/)
    expect(rendered).to match(/MyText/)
  end
end
