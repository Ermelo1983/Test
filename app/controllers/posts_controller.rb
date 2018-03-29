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

  def edit
    @user = current_user
    @post = Post.find(params[:id])
  end

    def update
    @user = current_user
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      flash[:success] = "Post updated!"
      redirect_to root_path(current_user)
    else
      render action: :edit
    end
  end


  def delete
  end

  private

  def post_params
    params.required(:post).permit(:title, :body, :image_url)
  end
end
