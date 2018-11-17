FactoryBot.define do

  factory :user do
    email { 'user@example.com' }
    username { 'user' }
    password { 'test123' }
  end

  factory :admin, class: User do
    email { 'admin@example.com' }
    username { 'admin' }
    password { 'admin123' }
  end

  factory :random_user, class: User do
    email { Faker::Internet.unique.safe_email }
    username { Faker::Internet.username }
    password { 'test123' }
  end
end