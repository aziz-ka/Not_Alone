class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    Senior.find(session[:senior_id]) if session[:senior_id]
  end

  def authorize
    redirect_to '/' if current_user.nil?
  end

end
