FactoryBot.define do

  # comment factory with a `belongs_to` association for the idea
  factory :comment do
    body { Faker::Lorem.paragraph }
    sequence(:user_name) { |n| "user#{n}" }

    association :idea, factory: :idea, strategy: :build
  end
end