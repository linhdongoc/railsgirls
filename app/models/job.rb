class Job < ApplicationRecord
  has_many :users
  has_many :portfolios, through: :users
end
