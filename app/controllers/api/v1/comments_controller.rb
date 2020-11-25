class Api::V1::CommentsController < ApplicationController
  def index
    comments = comments.all
    render json: comments
  end

  def show
    comment = find_comment
    render json: comment
  end

  def create
    comment = Comment.create!(comment_params)
  end

  def destroy
    comment = find_comment
    comment.delete
  end

  def update
    comment = find_comment
    comment.update(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_box_id,:user_id,:content)
  end

  def find_comment
    comment = Comment.find(params[:id])
  end
end