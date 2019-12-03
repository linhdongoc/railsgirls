class Idea < ApplicationRecord
  mount_uploader :picture, ImageUploader

  has_many :comments

  validates :name, presence: true
  validates :picture, file_size: { less_than_or_equal_to: 10.megabytes },
            file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
end
