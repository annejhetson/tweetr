class RoarsController < ApplicationController

  def create
    @user = User.find(current_user.id)
    @user.roars.create(params.require(:roar).permit(:roar))
    redirect_to "/users/#{current_user.id}"
  end
end
