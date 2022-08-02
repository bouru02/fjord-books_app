# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :current_user_id, if: :user_signed_in?

  def after_sign_out_path_for(_resource)
    books_path
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[zip_code address introduction])
  end

  def current_user_id
    @current_user_id = current_user.id
  end
end
