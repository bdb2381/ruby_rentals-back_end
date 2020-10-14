class Api::V1::ItemsController < ApplicationController

  skip_before_action :authorized, only: [:index, :show]  
  # non protected view for index and show

  def index
    items = Item.all
    render json: items
  end

  def show
    item = Item.find_by(id: params[:id])
    if item
      render json: item
    else 
      render json: {message: "This Item ID does not exist"}
    end
  end
end

# class PostsController < ApplicationController   
#    def index       
#    # Runs a SQL join with the users table.   
#    posts = Post.includes(:author).all          
#        render json: posts    
#     end
#   end
