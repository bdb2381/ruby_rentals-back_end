class Api::V1::ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items
  end

  def show
    item = Item.find_by(params[:id])
    if item
      render json: item
    else 
      render json: {message: "This Item ID does not exist"}
    end
  end
end
