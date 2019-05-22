require 'rails_helper'

RSpec.describe "order_items/edit", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :quantity => 1,
      :price => "9.99",
      :fulfilled => false,
      :order => nil,
      :item => nil
    ))
  end

  it "renders the edit order_item form" do
    render

    assert_select "form[action=?][method=?]", order_item_path(@order_item), "post" do

      assert_select "input[name=?]", "order_item[quantity]"

      assert_select "input[name=?]", "order_item[price]"

      assert_select "input[name=?]", "order_item[fulfilled]"

      assert_select "input[name=?]", "order_item[order_id]"

      assert_select "input[name=?]", "order_item[item_id]"
    end
  end
end
