class Article < ApplicationRecord
  has_one :comment_box
  # has_many :user_articles
  has_many :save_articles
  has_many :like
end
