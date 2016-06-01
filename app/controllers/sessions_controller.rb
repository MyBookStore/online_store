class SessionsController < ApplicationController
  include ServiceClients

  def new
    render :new
  end

  def create
    user = customer_service.get_customer({:email => params[:session][:email], :password => params[:session][:password]})
    if user
      render :html => 'welcome'
    else
      render 'invalid params'
    end
  end
end
