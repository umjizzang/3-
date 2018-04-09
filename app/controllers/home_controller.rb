class HomeController < ApplicationController
  def index
    @post = Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:a]
    @post.content = params[:b]
    @post.save
    
    redirect_to '/home/index'
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end
end
