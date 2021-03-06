module SessionsHelper
  include ServiceClients

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= customer_service.get_by_id(session[:user_id])
  end
end
