require 'rails_helper'

RSpec.describe "order_items/show", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :quantity => 2,
      :price => "9.99",
      :fulfilled => false,
      :order => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end