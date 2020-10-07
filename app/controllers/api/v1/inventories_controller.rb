class Api::V1::InventoriesController < ApplicationController


  def index
    inventories = Inventory.all
    render json: inventories
  end

  def show
    inventory = Inventory.find_by(params[:id])
    render json: inventory
  end



end
