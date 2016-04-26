class ApplicationController < ActionController::Base
  before_action :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  #Rails llamará automáticamente a este método para agregar la opción de configuración regional derecho a la URL que estamos llamando.
  def default_url_options(options = {})
    {locale: I18n.locale}
  end
  protect_from_forgery with: :exception
end
