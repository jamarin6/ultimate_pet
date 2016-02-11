class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_filter :set_locale
  protect_from_forgery with: :exception


  def default_url_options(options={})
    { locale: I18n.locale == :en ? '' : I18n.locale }
  end

  def set_locale
    if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym) 
      I18n.locale = params[:locale]
    else
      I18n.locale = :en
    end
  end

  def after_sign_in_path_for(user)
    pets_path
  end

  private

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end

end
