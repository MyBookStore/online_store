module SessionsHelper
  include ServiceClients
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= customer_service.get_customer(params[:session])
  end
end
