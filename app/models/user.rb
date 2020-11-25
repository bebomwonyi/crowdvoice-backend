class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :user_articles
  has_many :likes
  has_many :save_articles
end
