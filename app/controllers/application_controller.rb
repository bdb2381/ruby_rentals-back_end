class ApplicationController < ActionController::API
  
  ########################
  # uncomment before_action when ready to implement auth on front end
  # before_action :authorized

  def encode_token(payload)
    # payload is the user 
    JWT.encode(payload, 'What_SHALL_IDO?!')
  end

  def auth_header
    # { 'Authorization': 'Bearer <token>' }
    request.headers['Authorization']
  end


  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # headers: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 
          'What_SHALL_IDO?!', 
          true, 
          algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end 

  def current_user
    if decoded_token
      # decoded_token=> [{"user_id"=>1}, {"alg"=>"HS256"}]
      # or nil if we can't decode the token
      user_id = decoded_token[0]['user_id']
      user = User.find_by(id: user_id)
    end
  end
 
  def logged_in?
    !!current_user
  end

  def authorized
    render json: { 
      message: 'Please log in'
    },status: :unauthorized
      unless logged_in?
      end
  end 
end 