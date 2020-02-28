class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:edit, :update]
  
  def new
  end 
  
  def create
    @user_profile = current_user.user_profile.create(user_profile_params)
  end 

  def edit 
  end 

  def update 

  end 

  def destroy
  end 













  private 
  def user_profile_params
    params.require(:user_profile)
  end 


end
