require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'new' do
    include ServiceClients
    it 'should create a new user' do
      user = {
          name: "test",
          password: "test123",
          password_confirmation: "test123",
          email: "test@gmail.com"
      }

      post :new, {:user => user }
      expect(response).to be_success
      # expect(customer_service).to receive(:new).with(user)
    end
  end
end
