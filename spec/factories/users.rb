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

  factory :applicant, class: User do
    salutation { 'Herr' }
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    street { Faker::Address.street_address }
    zip { Faker::Address.zip_code }
    place { Faker::Address.city }
    birthday { Faker::Date.birthday(18, 65) }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.unique.safe_email }
    username { Faker::Internet.unique.username }
    password { 'test123' }
  end
end