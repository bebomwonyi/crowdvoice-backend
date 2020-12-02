class Api::V1::UserArticlesController < ApplicationController
  def index
    uas = UserArticle.all
    render json: uas
  end

  def show
    ua = find_user_article
    render json: ua
  end

  def create
    ua = UserArticle.create!(user_article_params)
    render json: ua
  end

  def destroy
    ua = find_user_article
    ua.delete
  end

  def update
    ua = find_user_article
    ua.update(user_article_params)
  end

  private

  def user_article_params
    params.require(:user_articles).permit(:user_id, :refarttitle,:author,:title,:description,:refartimgurl, :refarturl,:content)
  end

  def find_user_article
    ua = UserArticle.find(params[:id])
  end
end
