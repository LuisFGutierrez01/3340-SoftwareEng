class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :nav

  def nav
    @user_nav = current_user
    if @user_nav != nil
    @player_nav = current_user.player
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birthday, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :birthday, :username])
  end
end
