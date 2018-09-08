class Applicant < ApplicationRecord
  has_many :jobs
  has_many :portfolios, through: :jobs

  validates_presence_of :salutation, :firstname, :lastname, :email
end
