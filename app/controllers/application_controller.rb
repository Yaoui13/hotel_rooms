class ApplicationController < ActionController::Base
  before_action :check_session

  private

  def check_session
    # Laisse passer uniquement welcome#index et welcome#create sans session
    return if controller_name == 'welcome' && ['index', 'create'].include?(action_name)

    # Sinon, redirige vers la page d'accueil si pas de session utilisateur
    unless session[:user_name].present? && session[:user_email].present?
      redirect_to root_path
    end
  end
end

