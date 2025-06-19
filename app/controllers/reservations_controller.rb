class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = "Réservation confirmée avec succès !"
      redirect_to @reservation
    else
      flash.now[:alert] = "Erreur lors de la réservation."
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @room = @reservation.room
  end

  def index
    @reservations = Reservation.includes(:room).all
  end

  private

  def reservation_params
    params.require(:reservation).permit(:client_name, :start_date, :end_date, :room_id)
  end
end
