class PostsController < ApplicationController
  before_action :authenticate_user!
  
	def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user.name
    if @post.save
    	redirect_to @post
  	else
    	render 'new'
  	end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

    def update 
    @post = Post.find(params[:id])
    @post.author = current_user.name
      if @post.update(post_params)
        redirect_to @post
      else
        render 'edit'
      end
  end

	def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path


	end 

  

  private
  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

end