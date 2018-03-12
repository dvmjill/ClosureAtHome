class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :verify_logged_in
  #
  # def verify_logged_in
  #   redirect_to root_path unless current_user
  #
  # end
end
