require 'books_service_client'

class BooksController < ApplicationController
  def index
    @books = JSON.parse(BooksServiceClient::Service.new.all_books)
  end
end
