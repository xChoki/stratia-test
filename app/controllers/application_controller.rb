class ApplicationController < ActionController::Base
  before_action :set_locale

  def test
    render plain: 'Test route works!'
  end

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale]
      session[:locale] = I18n.locale
    end

    # Check if the current request path is the root path
    unless request.path == root_path
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def _set_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end
end
