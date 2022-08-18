class User < ApplicationRecord
  has_many :projects 
  has_many :tasks 
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
