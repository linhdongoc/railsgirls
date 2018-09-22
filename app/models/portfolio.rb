class Portfolio < ApplicationRecord
  mount_uploader :foto, FileUploader
  mount_uploader :cover_letter, FileUploader
  mount_uploader :cv, FileUploader
  mount_uploader :certificates, FileUploader

  serialize :certificates, JSON

  belongs_to :job
  belongs_to :applicant

  accepts_nested_attributes_for :job
end
