class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_locale

  add_flash_types :danger, :info, :warning, :success

  private

  def set_locale
    locale = cookies[:locale] || params[:locale] || I18n.default_locale
    cookies[:locale] = locale
    I18n.locale = locale
  end
end
