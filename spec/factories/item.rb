FactoryBot.define do
  factory :item do
    list { create :list }
    name { Faker::Food.ingredient }
  end
end
