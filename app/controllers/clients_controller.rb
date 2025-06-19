class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:notice] = "Client créé avec succès !"
      redirect_to clients_path
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:nom)
  end
end
