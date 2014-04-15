class UsersController < ApplicationController

  def email
    UserMailer.welcome(current_user).deliver
    redirect_to "/"
  end

  def index
  end
end
