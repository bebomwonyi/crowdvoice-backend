class Api::V1::ArticlesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = find_article
    render json: article
  end

  def create
    article = Article.create!(article_params)
    render json: article
  end

  def destroy
    article = find_article
    article.delete
  end

  def update
    article = find_article
    article.update(article_params)
  end

  private

  def article_params
    params.require(:articles).permit(:refarttitle,:author,:title,:description,:refarturl,:refartimgurl,:content,:user_article_id)
  end

  def find_article
    article = Article.find(params[:id])
  end
end
