class UsersController < ApplicationController
  include ServiceClients

  def create
      @user = customer_service.create(params)
      render :index
  end
end
