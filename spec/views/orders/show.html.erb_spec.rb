require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :count => 2,
      :name => "Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :city => "City",
      :stock => "Stock"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Stock/)
  end
end
