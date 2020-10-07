class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: { message: 'This User ID does not exist' }
    end
  end



end
