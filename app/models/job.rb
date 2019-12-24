class Job < ApplicationRecord
  has_many :users
  has_many :portfolios, through: :users

  acts_as_paranoid
  validates_uniqueness_of :title
end
