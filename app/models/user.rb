class User < DelegateClass(CustomerServiceClient::Resources::User)
  def authenticate password
    @user_data['password_digest'] == password.digest
  end
end