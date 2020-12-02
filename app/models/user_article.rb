class UserArticle < ApplicationRecord
  belongs_to :user
  # belongs_to :article
  has_many :save_article
  has_many :like
end
