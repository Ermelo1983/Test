class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def new
    @friendship = Friendship.new
  end

  def create
    Friendship.create(friendship_params)
     redirect_to root_path
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def update
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to root_path
  end

  private

  def friendship_params
    params.permit(:friend_id, :user_id)
  end
end
