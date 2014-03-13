require 'rinku'

class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    	current_user.posts << @post
			redirect_to posts_path
		else
			render 'new'
		end		
  end

  def show
		@post = Post.where(id: params[:id]).first
		# @post = Post.find(params[:id])
		# puts @post.content
	end

	def edit
		@post = Post.where(id: params[:id]).first
	end

	def update
		@post = Post.where(id: params[:id]).first
		if @post.update(params[:post].permit(:title, :content))
			redirect_to post_path
		else
			render 'edit'
		end		
	end

private
	
	def post_params
		params.require(:post).permit(:content, :user)
	end

end
