class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params.merge(user_id: current_user.id))
     redirect_to root_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
  end

    def update
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      flash[:success] = "Comment updated!"
      redirect_to root_path(current_user)
    else
      render action: :edit
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comment_params
    params.required(:comment).permit(:title, :body, :image_url, :post_id)
  end
  end
