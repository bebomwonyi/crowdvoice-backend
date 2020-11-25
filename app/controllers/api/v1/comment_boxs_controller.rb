class Api::V1::CommentBoxsController < ApplicationController
  def index
    cbs = CommentBox.all
    render json: cbs
  end

  def show
    cb = find_comment_box
    render json: cb
  end

  def create
    cb = CommentBox.create!(comment_box_params)
  end

  def destroy
    cb = find_comment_box
    cb.delete
  end

  private

  def comment_box_params
    params.require(:commentbox).permit(:article_id)
  end

  def find_comment_box
    cb = CommentBox.find(params[:id])
  end
end