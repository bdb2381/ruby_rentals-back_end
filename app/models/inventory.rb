class Inventory < ApplicationRecord
  belongs_to :item
  has_many :reservations, dependent: :destroy
end
