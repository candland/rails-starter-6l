class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :prepare_exception_notifier
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def prepare_exception_notifier
    request.env["exception_notifier.exception_data"] = {
      current_user: current_user,
    }
  end
end
