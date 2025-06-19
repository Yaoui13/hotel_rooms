class RoomsController < ApplicationController
  def index
    if params[:query].present?
      query = params[:query].downcase
      @rooms = Room.where('lower(name) LIKE ? OR lower(city) LIKE ?', "%#{query}%", "%#{query}%")
    else
      @rooms = Room.all
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :city, :price, :photo_url, :description)
  end
end
