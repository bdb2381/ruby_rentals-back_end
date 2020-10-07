class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :receipt
  belongs_to :inventory


end



