class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservations.all
    render json: reservations
  end

  def show
    reservation = Reservations.find_by(params[:id])
    render json: reservation
  end


end
