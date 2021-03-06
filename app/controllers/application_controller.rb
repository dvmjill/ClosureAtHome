class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery with: :exception
    # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :verify_logged_in

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def verify_logged_in
    redirect_to root_path unless current_vet
  end
  
  # before_action :verify_logged_in
  #
  # def verify_logged_in
  #   redirect_to root_path unless current_user
  #
  # end

end
