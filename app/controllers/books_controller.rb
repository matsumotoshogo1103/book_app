class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    redirect_to users_path if current_user
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :price, :autor, :text, :genre_id).merge(user_id: current_user.id)
  end
end
