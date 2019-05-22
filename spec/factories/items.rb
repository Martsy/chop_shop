FactoryBot.define do
  factory :item do
    name { "MyString" }
    active { false }
    price { "9.99" }
    description { "MyText" }
    image { "MyString" }
    inventory { 1 }
    user { nil }
  end
end
