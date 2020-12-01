class Api::V1::UsersController < ApplicationController
  skip_before_action :logged_in?, only: [:create]
  def index
    users = User.all
    render json: users
  end

  def show
    user = find_user
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      render json: {user: user}, status: :created
    else
      render json: {error:"failed to create user"}, status: :not_acceptable
    end

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
    params.require(:user).permit(:name,:age,:username,:password_digest)
  end

  def find_user
    user = User.find(params[:id])
  end
end
