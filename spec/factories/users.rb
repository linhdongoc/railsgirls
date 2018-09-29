FactoryBot.define do

  factory :user do
    email { 'user@example.com' }
    password { 'test123' }
  end

  factory :admin, class: User do
    email { 'admin@example.com' }
    password { 'admin123' }
  end

  factory :random_user, class: User do
    email { Faker::Internet.unique.safe_email }
    password { 'test123' }
  end
end