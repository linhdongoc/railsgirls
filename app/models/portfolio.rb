class Portfolio < ApplicationRecord
  mount_uploader :foto, :cover_letter, :cv, :certificates, FileUploader
  serialize :certificates, JSON

  belongs_to :job
  belongs_to :applicant
end
