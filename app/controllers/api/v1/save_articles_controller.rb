class Api::V1::SaveArticlesController < ApplicationController
  def index
    sas = SaveArticle.all
    render json: sas
  end

  def show
    sa = find_saved_article
    render json: sa
  end

  def create
    sa = SaveArticle.create!(save_article_params)
  end

  def destroy
    sa = find_saved_article
    sa.delete
  end

  private

  def save_article_params
    params.require(:savearticle).permit(:article_id,:user_id)
  end

  def find_saved_article
    sa = SaveArticle.find(params[:id])
  end
end
