class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date,:end_date,:user_id, :receipt_id, :inventory_id, :created_at, :updated_at, :inventory_id, :receipt_id, :user_id,

  belongs_to :user
  belongs_to :receipt
  belongs_to :inventory

end
