FactoryBot.define do

  factory :comment do
    body { Faker::Lorem.paragraph }
    sequence(:user_name) { |n| "user#{n}" }

    association :idea, factory: :idea, strategy: :build
  end
end