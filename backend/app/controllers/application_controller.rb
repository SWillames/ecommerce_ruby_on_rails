class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signu_up, keys: [:name, :email, :password, :password_comfirmation])
  end
end
