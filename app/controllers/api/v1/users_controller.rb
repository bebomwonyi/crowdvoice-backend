class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    users = User.all
    render json: users, include: [:user_articles]
  end


  # render json: users, include: {user_articles: {only: [:author]}} 
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
    user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name,:age,:username,:password)
  end

  def find_user
    user = User.find(params[:id])
  end
end
