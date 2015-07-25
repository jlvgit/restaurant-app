class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to restaurants_path, alert: "Reservation Sent!"
    else
      render :new
    end
  end

  def new
    @reservation = Reservation.new
  end

  def index

  end



private

  def reservation_params
    params.require(:reservation).permit(:email, :date, :time, :guests, :comment, :user_id)
  end
end
