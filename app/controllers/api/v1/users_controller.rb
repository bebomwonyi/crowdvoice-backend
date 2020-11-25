class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = find_user
    render json: user
  end

  def create
    user = User.create!(user_params)
  end

  def destroy
    user = find_user
    user.delete
  end

  def update
    user = find_user
    user.update(find_user)
  end

  private

  def user_params
    params.require(:user).permit(:name,:age,:username,:password)
  end

  def find_user
    user = User.find(params[:id])
  end
end
