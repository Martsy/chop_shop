FactoryBot.define do
  factory :order_item do
    quantity { 1 }
    price { "9.99" }
    fulfilled { false }
    order { nil }
    item { nil }
  end
end
