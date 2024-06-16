# frozen_string_literal: true

# Controller for managing the application.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?
  before_action :check_business_presence, unless: :devise_controller?

  private

  def business_controller?
    controller_name == 'businesses' && action_name.in?(%w[new create])
  end

  def current_business
    @current_business ||= current_user.business if user_signed_in?
  end

  def check_business_presence
    return unless current_business.nil? && !business_controller?

    redirect_to new_business_path, alert: t('controllers.application.alerts.create_business_profile')
  end

  helper_method :current_business
end
