class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :receipts, through: :reservations, dependent: :destroy


  # email is the username upon login
  validates :email, uniqueness: { case_sensitive: false }, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password
  # BCrypt:: Password.create('P@ssw0rd')
end
