require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  describe '#create' do
    xit "should create the order" do
      order_params = {
          :customer_id => "1",
          :book_id => "2"
      }

      customer = double('Customer', :id => 47)

      expect_any_instance_of(CustomerServiceClient::Service).to receive(:get).and_return(customer)
      expect_any_instance_of(OrderServiceClient::Service).to receive(:create).with(order_params)

      post :new, order_params

      response.should be_success
      expect(response.code).to eql("200")
    end

    describe '#get' do
      it "should get the order of given id" do
        expect_any_instance_of(OrderServiceClient::Service).to receive(:get).with({id: "3"})

        get :get, {id: 3}

        response.should be_success

        expect(response.code).to eql("200")
      end
    end


    describe '#confirm' do
      it "should mark the status of order as confirmed" do
        expect_any_instance_of(OrderServiceClient::Service).to receive(:confirm).with({id: '2'})

        put :confirm, {id: 2}
      end
    end
  end
end
