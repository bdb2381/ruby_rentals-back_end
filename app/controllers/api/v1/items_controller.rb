class Api::V1::ItemsController < ApplicationController

  def index
    items = Items.all
    render json: items
  end

  def show
    item = Items.find_by(params[:id])
    render json: item
  end
end
