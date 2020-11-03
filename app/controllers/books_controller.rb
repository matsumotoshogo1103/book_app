class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :book_find, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
    redirect_to users_path if current_user.id != @book.user.id
  end

  def update
    if current_user.id == @book.user.id && @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @book.user.id
      @book.destroy
      redirect_to user_path(@book.user.id)
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :price, :autor, :text, :genre_id).merge(user_id: current_user.id)
  end

  def book_find
    @book = Book.find(params[:id])
  end
end
