class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end