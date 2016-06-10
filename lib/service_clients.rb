module ServiceClients
  def books_service
    @books_service ||= BooksServiceClient::Service.new("online")
  end

  def customer_service
    @customer_service ||= CustomerServiceClient::Service.new("online")
  end


  def order_service
    @order_service ||= OrderServiceClient::Service.new("online")
  end

end