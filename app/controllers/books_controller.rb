require 'books_service_client'

class BooksController < ApplicationController
  include ServiceClients

  def all
    @books = books_service.all_books
  end
end
