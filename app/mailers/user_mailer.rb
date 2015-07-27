class UserMailer < ApplicationMailer
  default from: 'notifications@restaurant-app.com'
 
  def welcome_email(user)
    # @owner = Restaurant.find_by(params[:user_id])
    @user = user
    mail(to: @user.email, subject: 'A new reservation has been made!')
  end

end
