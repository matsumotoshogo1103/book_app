class UsersController < ApplicationController
  before_action :authenticate_user!
<<<<<<< Updated upstream
=======
  before_action :user_find, only: [:show, :edit, :update]
>>>>>>> Stashed changes

  def index
    @user = User.order('id DESC')
  end

  def show
    @user = User.find(params[:id])
  end
end
