class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to access_denied_pages_path, :alert => exception.message
  end

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def cur_user
    current_user
  end

  protected

  def configure_permitted_parameters
    p "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRr"
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email, :password)
    end
  end
end
