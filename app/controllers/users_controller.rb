class UsersController < ApplicationController
  include ServiceClients

  def create
      @user = customer_service.new(params)
      render :index
  end
end
