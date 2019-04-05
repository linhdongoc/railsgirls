class Portfolio < ApplicationRecord
  mount_uploaders :documents, FileUploader

  belongs_to :job
  belongs_to :user

  accepts_nested_attributes_for :job

  scope :from_user, -> (id) { where(user_id: id).order(id: :desc) }
end
