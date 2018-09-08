class Job < ApplicationRecord
  has_many :applicants
  has_many :portfolios, through: :applicants
end
