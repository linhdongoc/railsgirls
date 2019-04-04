class Idea < ApplicationRecord
  mount_uploader :picture, ImageUploader

  has_many :comments
  validates :name, presence: true
end
