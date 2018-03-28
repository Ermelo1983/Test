class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params.merge(user_id: current_user.id))
     redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def delete
  end

  private

  def post_params
    params.required(:post).permit(:title, :body, :image_url)
  end
end
