class Transaction < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
