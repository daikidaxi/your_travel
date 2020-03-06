FactoryBot.define do
  factory :post do
    user { nil }
    country { "MyString" }
    content { "MyText" }
    visited_date { "2020-03-01" }
  end
end
