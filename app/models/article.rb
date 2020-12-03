class Article < ApplicationRecord
  # has_one :comment_box
  belongs_to :user_article
  has_many :save_articles
  has_many :like
end
