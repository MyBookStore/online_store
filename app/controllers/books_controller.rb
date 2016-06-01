require 'books_service_client'

class BooksController < ApplicationController
  include ServiceClients

  def index
    @books = book_service.all_books
  end
end
