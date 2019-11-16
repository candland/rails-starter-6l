class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  include Pagy::Backend

  before_action :prepare_exception_notifier

  check_authorization unless: :devise_controller?

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect} for #{current_user}"
    redirect_to root_url, alert: exception.message
  end

  private

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
