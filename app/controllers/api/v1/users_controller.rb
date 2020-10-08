class Api::V1::UsersController < ApplicationController
  
  ########################
  # uncomment before_action when ready to implement auth on front end
  # skip_before_action :authorized, only: [:create]

  ########################
  # user accesses profile with a new JWT token
  ########################
  def profile
    render json: { 
      user: UserSerializer.new(current_user)
    }, status: :accepted
  end

  ########################
  # create a new user and issue a JWT token
  ########################
  def create
    user = User.create(user_params)
    
    if user.valid?
      @token = encode_token(user_id: user.id)

      render json: {
        user: UserSerializer.new(user), jwt: @token 
      }, status: :created
    
    else
      render json: {
        error: 'Failed to create a user; User not unique? Or user did not provide first and last name'
      }, status: :not_acceptable
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
      render json: { 
        message: 'This User ID does not exist' }
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :street_address, :city, :state, :zip_code, :phone
      )
    end
  

end
