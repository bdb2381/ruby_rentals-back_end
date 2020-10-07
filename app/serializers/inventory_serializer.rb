class InventorySerializer < ActiveModel::Serializer
  attributes :id, :sku, :rental_status, :condition, :date_bought, :item_id


  belongs_to :item
  has_many :reservations
end


