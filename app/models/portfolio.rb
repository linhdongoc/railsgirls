class Portfolio < ApplicationRecord
  mount_uploader :foto, :cover_letter, :cv, :certificates, FileUploader
  serialize :certificates, JSON

  belongs_to :job
  belongs_to :applicant

  accepts_nested_attributes_for :job
end
