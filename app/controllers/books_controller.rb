require 'books_service_client'

class BooksController < ApplicationController
  include ServiceClients

  def index
    @books = books_service.all_books params
  end

  def show
    @books = books_service.get(id: params[:id])
  end
end
