class UserSerializer < ActiveModel::Serializer
  attributes :id,:first_name, :last_name,
  :password_digest, :street_address,:city, :state, :zip_code, :email,:phone

  has_many :reservations
  has_many :receipts, through: :reservations



end