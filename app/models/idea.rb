class Idea < ApplicationRecord
  mount_uploader :picture, FileUploader

  has_many :comments
  validates :name, presence: true
end
