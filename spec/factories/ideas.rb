FactoryBot.define do

  factory :idea do
    name { Faker::Dessert.variety }
    description { Faker::Lorem.paragraph }
    picture { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/idea1.jpg'), 'image/jpeg') }
  end
end