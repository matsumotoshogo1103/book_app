class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user
      redirect_to users_path
    end
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

  private

  def book_params
    params.require(:book).permit(:title, :image, :price, :autor, :text, :genre_id).merge(user_id: current_user.id)
  end

end
