class Api::V1::ReceiptsController < ApplicationController
  
  skip_before_action :authorized, only: [:index, :show, :create]
  
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

  def create 
    receipt = Receipt.create(receipt_params)

    if receipt.valid?
      render json: {
        receipt: ReceiptSerializer.new(receipt)
      },
      status: :created 
    else 
      render json: {
        error: 'Failed to create receipt.'
      },
      status: :not_acceptable
    end 
  end

  
  
  private
  def receipt_params
    params.require(:receipt).permit(:total_rental_amount, :tax)
    
  end
  
end # controller end  