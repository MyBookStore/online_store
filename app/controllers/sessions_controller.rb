class SessionsController < ApplicationController
  include ServiceClients

  def new
    render :new
  end

  def create
    user = customer_service.get_customer({:email => params[:session][:email], :password => params[:session][:password]})
    if user.valid?
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
