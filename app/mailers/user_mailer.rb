class UserMailer < ActionMailer::Base
  default from: "aassddffddssasdfss@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"
    @name = @user.email[0..(@user.email.index('@')-1)]

    mail to: @user.email, subject: "Welcome to Tweetr"
  end
end
