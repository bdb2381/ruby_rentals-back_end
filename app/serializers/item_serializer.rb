class ItemSerializer < ActiveModel::Serializer
  attributes :id, :brand,:model,:item_type, :size, :description, :gear_photo_url, :model_year, :amount_available, :day_rental_price

  has_many :inventory

end
