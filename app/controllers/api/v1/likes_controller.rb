class Api::V1::LikesController < ApplicationController
  def index
    likes = Like.all
    render json: likes
  end

  def show
    like = find_like
    render json: like
  end

  def create
    like = Like.create!(like_params)
  end

  def destroy
    like = find_like
    like.delete
  end

  private

  def like_params
    params.require(:like).permit(:user_id,:article_id)
  end

  def find_like
    like = Like.find(params[:id])
  end
end