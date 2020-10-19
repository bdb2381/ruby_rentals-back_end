class Api::V1::ReservationsController < ApplicationController

  skip_before_action :authorized, only: [:create, :show]

  def index
    reservations = Reservation.all
    render json: reservations
  end

  def show
    reservation = Reservation.find_by(id: params[:id])
    if reservation
      render json: reservation
    else 
      render json: {message: "This Reservation ID does not exist"}
    end
  end

  def create
    # Item.first.inventory.where(rental_status: true).count
    # if Inventory.findAll(rental_status == "true")
    #   if Inventory.count(rental_status == "true") && match quanity in reservation request    
    
    # find (by id) an item's inventory and how many are available
    # if Item.find(:id).inventory.where(rental_status: true).count >= reservation.requested_quanitity
      # do something

      reservation = Reservation.create(reservation_params)
      if reservation.valid?
        render json: { 
          reservation: ReservationSerializer.new(reservation)
        },
        status: :created
      else 
        render json: {
          error: 'Failed to create the reservation.'
      },
      status: :not_acceptable
    end
  end


private

def reservation_params
  params.require(:reservation).permit(:id, :start_date,:end_date,:user_id, :receipt_id, :inventory_id)
end

end  # end class 

# Reservation.create(start_date: "2020-10-22", end_date: "2020-2-2", user_id: 50, receipt_id: 1, inventory_id: 2)

# // X currentUser.id 
# // cartItems[0].inventory[0].id
# // cartItems[0].inventory[0].rental_status
# // cartItems[0].amount_available
# // cartItems[0].numberOfItemsReserved
# // cartItems[0].returnDate
# // cartItems[0].startDate
# // need receipt id 
