class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user
      redirect_to users_path
    end
  end
end
