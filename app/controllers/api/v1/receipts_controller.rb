class Api::V1::ReceiptsController < ApplicationController

  def index
    receipts = Receipts.all
    render json: receipts
  end

  def show
    receipt = Receipts.find_by(params[:id])
    if receipt
      render json: receipt
    else 
      render json: {message: "This Receipt ID does not exist"}
  end



end
