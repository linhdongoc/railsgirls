class User < ApplicationRecord
  include Gravtastic
  gravtastic

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email, :password
  validates_confirmation_of :password
  validates_uniqueness_of :email, case_sensitive: true
  validates_length_of :password, minimum: 10
end
