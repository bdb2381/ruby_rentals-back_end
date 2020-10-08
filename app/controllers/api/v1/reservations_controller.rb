class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservations.all
    render json: reservations
  end

  def show
    reservation = Reservations.find_by(params[:id])
    if reservation
      render json: reservation
    else 
      render json: {message: "This Reservation ID does not exist"}
    end
  end

end 