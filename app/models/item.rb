class Item < ApplicationRecord
  has_many :inventory, dependent: :destroy
end
