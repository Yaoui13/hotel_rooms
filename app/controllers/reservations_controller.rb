class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new(room_id: params[:room_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      flash[:notice] = "Réservation confirmée avec succès !"
      redirect_to rooms_path
    else
      flash.now[:alert] = "Erreur lors de la réservation."
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @room        = @reservation.room
  end

  def index
    @reservations = Reservation.includes(:room).all
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path, notice: "Réservation annulée avec succès."
  end

  private

  def reservation_params
    params.requir
