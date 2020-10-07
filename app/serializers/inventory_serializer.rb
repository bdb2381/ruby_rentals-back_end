class InventorySerializer < ActiveModel::Serializer
  attributes :id, :brand, :model,:item_type, :size, :description,:gear_photo_url, :model_year,:amount_available, :day_rental_price,  :item_id


  belongs_to :item
  has_many :reservations
end

