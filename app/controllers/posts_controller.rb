class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.create params[:post]
    redirect_to posts_path
  end


end
