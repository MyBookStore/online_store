class OrdersController < ApplicationController
  include ServiceClients
  include SessionsHelper


  def new
    @book = books_service.get(params[:book_id])
    @customer = current_user
    render :new
  end

  def all
    @orders = order_service.fetch_orders_for_customer(current_user)
    render :all
  end

  def show
    @order = order_service.get(id:params[:id])
    render :show
  end

  def confirm
    @order = order_service.create(params)
    render :show
  end

end
