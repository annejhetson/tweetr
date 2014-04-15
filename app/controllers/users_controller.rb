class UsersController < ApplicationController

  def email
    UserMailer.welcome(current_user).deliver
    redirect_to "/"
  end

  def index
    @user = User.new
  end

  def show
    @roar = Roar.new
    @user = User.find(params[:id])
  end
end
