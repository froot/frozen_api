class BooksController < ApplicationController
  before_action :set_book, only: [:show]
  before_action :set_author, only: [:index], if: -> { params[:author_id].present? }

  def index
    logger.info("Processing books index request...")
    if @author
      render json: Book.where(author_id: @author.id)
    else
      render json: Book.all
    end
  end

  def show
    logger.info("Processing books show request...")
    render json: @book
  end

  private

  def set_book
    @book = Book.find_by(id: params[:id].to_i)
    render json: { error: "Book not found" }, status: 404 unless @book
  end

  def set_author
    @author = Author.find_by(id: params[:author_id].to_i)
    render json: { error: "Author not found" }, status: 404 unless @author
  end
end
