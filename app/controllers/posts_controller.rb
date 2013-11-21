class PostsController < ApplicationController


  before_filter :authenticate_owner!, :only => [:new, :create]
  before_filter :correct_owner!, :only => [:edit, :update, :destroy]

def new
	@post = Post.new
end	

	def create
  @post = Post.new(post_params)
 
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

	def show

  	@post = Post.find_by(id:params[:id])
	end
#this defienes the edit action
	def edit
  @post = Post.find_by(id:params[:id])
end

#defines the update action
def update
  @post = Post.find_by(id:params[:id])
 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end

def destroy
	@post= Post.find_by(id:params[:id])
    @post.destroy 
    redirect_to @post
  end 



	def index
  @posts = Post.all
end
	private
	def post_params
		params.require(:post).permit(:name, :description, :street, :city, :state, :zip, :phone, :avatar, :avatar_url, :menu, :menu_url, :owner_id)
	end
 def correct_owner!
      @restaurant = Restaurant.find(params[:id])
     #  @present_owner = @owner_id
     #  @restaurant = current_owner.restaurants.find_by(id: params[:id])
     # byebug
      
      
      if @restaurant.owner_id != current_owner.id
#        byebug
        redirect_to restaurants_path, alert: "Gordon Ramsey says f-- out!" 
      end
# => byebug
    end

	
end
