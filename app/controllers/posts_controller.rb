class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    redirect_to root_path unless logged_in?
    @post = Post.new(
        user_id: current_user.id,
        content: params[:post][:content],
        kontakt: params[:post][:kontakt])
    if @post.save
      redirect_to posts_path
      flash[:success] = "Oglas uspesno postavljen"
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end




end
