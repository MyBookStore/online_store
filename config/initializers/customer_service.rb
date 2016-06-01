CustomerServiceClient::Configuration.site = ENV_CONFIG['customer_service']['url']
CustomerServiceClient::Configuration.username = ENV_CONFIG['customer_service']['username']
CustomerServiceClient::Configuration.password = ENV_CONFIG['customer_service']['password']
CustomerServiceClient::Configuration.timeout = ENV_CONFIG['timeout']
CustomerServiceClient::Configuration.caller = Rails.application.class.parent
