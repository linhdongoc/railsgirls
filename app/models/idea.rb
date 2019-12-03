class Idea < ApplicationRecord
  has_many :comments
  has_one_attached :data

  validates :title, presence: true
  validates :data, file_size: { less_than_or_equal_to: 100.megabytes }
end
