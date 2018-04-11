class DashboardController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @comments = Comment.all.order("created_at DESC")

  end
end
