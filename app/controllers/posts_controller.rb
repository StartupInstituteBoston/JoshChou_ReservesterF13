class PostsController < ApplicationController
def new
	@post = Post.new
end	

	def create
  @post = Post.new(params[:post].permit(:name, :description, :street, :city, :state, :zip, :phone))
 
  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

	def show
  	@post = Post.find(params[:id])
	end
#this defienes the edit action
	def edit
  @post = Post.find(params[:id])
end

#defines the update action
def update
  @post = Post.find(params[:id])
 
  if @post.update(params[:post].permit(:name, :description, :street, :city, :state, :zip, :phone))
    redirect_to @post
  else
    render 'edit'
  end
end

def destroy
	@post= Post.find(params[:id])
    @post.destroy 
    redirect_to @post
  end 



	def index
  @posts = Post.all
end
	private
	def post_params
		params.require(:post).permit(:name, :description, :street, :city, :state, :zip, :phone, :avatar)
	end


	
end
