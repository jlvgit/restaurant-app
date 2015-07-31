class UserMailer < ApplicationMailer
  default from: 'notifications@restaurant-app.com'
 
  def welcome_email(user, reservation)
    @user = user
    @reservation = reservation
    mail(to: @user.email, subject: 'A new reservation has been made!')
  end

end
