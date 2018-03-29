class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def new
    @friendship = Friendsip.new
  end

  def create
    Friendship.create(friendship_params)
     redirect_to root_path
  end

  def update
  end

  def delete
  end

  private

  def friendship_params
    params.required(:friendship).permit(:user_id, :friend_id)
  end
end
