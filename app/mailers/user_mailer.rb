class UserMailer < ApplicationMailer
  default from: 'notifications@restaurant-app.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user, subject: 'A new reservation has been made!')
  end

end
