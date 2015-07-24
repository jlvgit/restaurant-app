class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.user_id = current_user.id
  end

  def new
    @reservation = Reservation.new
  end

  def show
  end
end
