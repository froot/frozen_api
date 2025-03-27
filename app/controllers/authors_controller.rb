class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def index
    render json: Author.all
  end

  def show
    render json: @author
  end

  private

  def set_author
    @author = Author.find_by(id: params[:id].to_i)
    render json: { error: "Author not found" }, status: 404 unless author
  end
end
