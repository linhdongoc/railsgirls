FactoryBot.define do

  factory :portfolio do
    earliest_entry { Faker::Date.forward(15) }
    salary_expectations { Faker::Number.decimal(2, 3) }
    documents {[
        Rack::Test::UploadedFile.new(Rails.root.join('spec/support/uploads/idea1.jpg'), 'image/jpeg'),
        Rack::Test::UploadedFile.new(Rails.root.join('spec/support/uploads/cover_letter.pdf'), 'application/pdf'),
        Rack::Test::UploadedFile.new(Rails.root.join('spec/support/uploads/cv.pdf'), 'application/pdf')
    ]}

    # belongs_to :job
    association :job, factory: :job, strategy: :build

    # belongs_to :applicant
    association :user, factory: :applicant, strategy: :build
  end
end