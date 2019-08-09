FactoryBot.define do
  factory :list do
    user { create :user }

    trait :with_items do
      items { create_list(:item, rand(2..5)) }
    end
  end
end
