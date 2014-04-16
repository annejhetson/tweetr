class AvatarsController < ApplicationController
  def new
    @avatar = Avatar.find_by(user_id: current_user.id)
    @user = current_user
    @new_avatar = Avatar.new
  end
  def create
    @user = current_user
    @avatar = Avatar.create(params.require(:avatar).permit(:user_id, :avatar))
    redirect_to "/"
  end
end
