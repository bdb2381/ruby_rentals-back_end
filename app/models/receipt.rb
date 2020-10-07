class Receipt < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
