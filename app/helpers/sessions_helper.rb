# CR just use helpers: on application controller
module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end


