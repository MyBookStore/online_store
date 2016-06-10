class SessionsController < ApplicationController
  include ServiceClients

  def new
    render :new
  end

  def create
    user = User.new(customer_service.get_customer({:email => params[:session][:email]}))
    if user
      user.authenticate(params[:session][:password])
      log_in(user)
      render :dash_board
    else
      flash.now[:danger] = 'invalid credentials'
      render :new
    end
  end


  def destroy
    session.delete(:user_id)
    @current_user = nil
    render :new
  end
end
