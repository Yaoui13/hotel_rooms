class WelcomeController < ApplicationController
  skip_before_action :check_session

  def index
  end

  def create
    session[:user_name] = params[:name]
    session[:user_email] = params[:email]
    flash[:notice] = "Bienvenue #{params[:name]} !"
    redirect_to rooms_path
  end
end

