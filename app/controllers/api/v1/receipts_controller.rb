class Api::V1::ReceiptsController < ApplicationController
  
  skip_before_action :authorized, only: [:index, :show, :create]
  
  def index
    receipts = Receipt.all
    render json: receipts
  end

  def show
    receipt = Receipt.find_by(id: params[:id])
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