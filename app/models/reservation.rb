class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :transaction
  belongs_to :inventory
end
