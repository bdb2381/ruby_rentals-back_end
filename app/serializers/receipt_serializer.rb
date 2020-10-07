class ReceiptSerializer < ActiveModel::Serializer
  attributes :id, :total_rental_amount, :tax, :created_at, :updated_at

  has_many :reservations



end

