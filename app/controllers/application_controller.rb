class ApplicationController < ActionController::API
  before_action :configure_permitted_parameter, if: :devise_controller?
  before_action : authenticate_user!

  protected

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: format('%s', name))
  end
end
