class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user_find, only: [:show, :edit, :update]
  before_action 

  def index
    @user = User.order('id DESC')
  end

  def show
  end

  def edit
    if current_user.id != @user.id
      redirect_to users_path
    end
  end

  def update
    if current_user.id == @user.id && @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_find
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :image, :age, :job_id, :gender_id, :introduce)
  end

end
