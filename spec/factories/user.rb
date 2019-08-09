FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'fake_password' }
    password_confirmation { 'fake_password' }
  end
end
