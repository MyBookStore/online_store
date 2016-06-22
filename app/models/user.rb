class User < DelegateClass(CustomerServiceClient::Resources::User)
  include ServiceClients

  def authenticate password
    customer_service.authenticate({customer_id: id, password: password})
  end
end