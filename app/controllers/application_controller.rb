class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:email])

    devise_parameter_sanitizer.permit(:sign_in, :keys => [:email])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:email])
 end
end
