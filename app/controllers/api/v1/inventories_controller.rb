class Api::V1::InventoriesController < ApplicationController


  def index
    inventories = Inventory.all
    render json: inventories
  end

  def show
    inventory = Inventory.find_by(params[:id])
    if user
      render json: inventory
    else 
      render json: { message: "This Inventory ID does not exist"}
    end 
  end



end
