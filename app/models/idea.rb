class Idea < ApplicationRecord
  mount_uploader :picture, FileUploader

  has_many :comments
end
