class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params.merge(user_id: current_user.id))
    redirect_to root_path
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

  if @profile.update_attributes(profile_params)
    flash[:success] = "Profile updated!"
    redirect_to root_path(current_user)
  else
    render action: :edit
  end
end


  def delete
  end

  private
  def profile_params
    params.require(:profile).permit(:date_of_birth, :gender, :street, :house_number, :zip_or_postal_code, :town, :country, :language, :profile_picture_url)
  end
end
