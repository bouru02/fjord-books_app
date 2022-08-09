# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = locale
  end

  def default_url_options(options = {})
    options.merge(locale: locale)
  end

  private

  def locale
    @locale ||= params[:locale] ||= I18n.default_locale
  end
end
