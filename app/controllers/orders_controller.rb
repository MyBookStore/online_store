class OrdersController < ApplicationController
  include ServiceClients
  include SessionsHelper

  def current_user
    customer_service.get({name: 'foo'})
  end

  def all
    @orders = order_service.fetch_orders_for_customer(current_user)
    render :all
  end
end
