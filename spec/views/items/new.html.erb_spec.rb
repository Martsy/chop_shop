require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :active => false,
      :price => "9.99",
      :description => "MyText",
      :image => "MyString",
      :inventory => 1,
      :user => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[active]"

      assert_select "input[name=?]", "item[price]"

      assert_select "textarea[name=?]", "item[description]"

      assert_select "input[name=?]", "item[image]"

      assert_select "input[name=?]", "item[inventory]"

      assert_select "input[name=?]", "item[user_id]"
    end
  end
end
