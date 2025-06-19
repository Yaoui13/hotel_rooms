class ApplicationController < ActionController::Base
  before_action :check_session

  private

  def check_session

    return if controller_name == 'welcome'

    
    unless session[:user_name].present? && session[:user_email].present?
      redirect_to root_path
    end
  end
end
