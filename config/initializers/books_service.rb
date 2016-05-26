require_relative '../../config/config_loader'
BooksServiceClient::Configuration.site = ENV_CONFIG['books_service']['url']
BooksServiceClient::Configuration.username = ENV_CONFIG['books_service']['username']
BooksServiceClient::Configuration.password = ENV_CONFIG['books_service']['password']
BooksServiceClient::Configuration.timeout = ENV_CONFIG['timeout']
BooksServiceClient::Configuration.caller = Rails.application.class.parent
