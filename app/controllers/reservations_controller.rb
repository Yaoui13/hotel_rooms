class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:edit, :update, :destroy]
  before_action :set_room, only: [:new, :create]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @room.reservations.build(reservation_params)
    if @reservation.save
      redirect_to reservations_path, notice: "Réservation confirmée !"
    else
      render :new
    end
  end

  def index
    @reservations = Reservation.all
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: "Réservation modifiée avec succès."
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, alert: "Réservation annulée."
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def reservation_params
    params.require(:reservation).permit(:client_name, :start_date, :end_date)
  end
end
