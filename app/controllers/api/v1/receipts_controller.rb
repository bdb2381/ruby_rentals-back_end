class Api::V1::ReceiptsController < ApplicationController

  def index
    receipts = Receipts.all
    render json: receipts
  end

  def show
    receipt = Receipts.find_by(params[:id])
    render json: receipt
  end



end
