class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  # #CR see refactor below
  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  helpers: current_user
end
