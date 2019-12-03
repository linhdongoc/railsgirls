FactoryBot.define do

  # idea factory without associated comments
  factory :idea do
    title { Faker::Dessert.variety }
    description { Faker::Lorem.paragraph }
    data { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/uploads/idea1.jpg'), 'image/jpeg') }

    # idea_with_comments will create comment data after the idea has been created
    factory :idea_with_comments do
      # comments_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        comments_count { 2 }
      end

      # the after(:create) yields two values; the idea instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the idea is associated properly to the comment
      after(:create) do |idea, evaluator|
        create_list(:comment, evaluator.comments_count, idea: idea)
      end
    end

  end
end
