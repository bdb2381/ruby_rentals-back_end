class Api::V1::UsersController < ApplicationController

  def create
    user = User.create(user_params)
    
    if user.valid?
      render json: {
        user: UserSerializer.new(user)
      }, status: :created
      
    else
      render json: {error: 'Failed to create a user'}, status: :not_acceptable
    end
  end



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

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :street_address, :city, :state, :zip_code, :phone
      )
    end
  

end
