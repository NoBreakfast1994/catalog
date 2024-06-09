# frozen_string_literal: true

# Controller for managing the application.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  private

  def current_business
    @current_business ||= current_user.business if user_signed_in?
  end

  helper_method :current_business
end
