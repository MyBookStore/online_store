OrderServiceClient::Configuration.site = ENV_CONFIG['order_service']['url']
OrderServiceClient::Configuration.username = ENV_CONFIG['order_service']['username']
OrderServiceClient::Configuration.password = ENV_CONFIG['order_service']['password']
OrderServiceClient::Configuration.timeout = ENV_CONFIG['timeout']
OrderServiceClient::Configuration.caller = Rails.application.class.parent
