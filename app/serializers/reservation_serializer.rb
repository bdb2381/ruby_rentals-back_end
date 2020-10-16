class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date,:end_date,:user_id, :receipt_id, :inventory_id, :created_at, :updated_at, :inventory_id, :receipt_id, :user_id

  belongs_to :user
  belongs_to :receipt
  belongs_to :inventory

end
# Reservation Serializer
# [
#   {
#     "id": 1,
#       "start_date": "2020-10-22",
#       "end_date": "2020-02-02",
#       "user_id": 50,
#       "receipt_id": 1,
#       "inventory_id": 2,
#       "created_at": "2020-10-16T03:25:08.195Z",
#       "updated_at": "2020-10-16T03:25:08.195Z",
#     "user": {
#       "id": 50,
#       "first_name": "Name",
#       "last_name": "LAST",
#       "password_digest": "$2a$12$goALqt/k17/1PzjabRl/M.oyF9RynAHgQFY0DthmyAyYyDEAmYDly",
#       "street_address": "1111",
#       "city": "Canton",
#       "state": "Florida",
#       "zip_code": "44444",
#       "email": "test@testing.com",
#       "phone": "423-233-123"
#       },
#     "receipt": {
#       "id": 1,
#       "total_rental_amount": "60.0",
#       "tax": null,
#       "created_at": "2020-10-15T22:22:27.337Z",
#       "updated_at": "2020-10-15T22:22:27.337Z"
#       },
#   "inventory": {
#     "id": 2,
#     "sku": "14963",
#     "rental_status": true,
#     "condition": "good",
#     "date_bought": "2020-01-01",
#     "item_id": 13
#     }
# }
# ]