class UserArticle < ApplicationRecord
  belongs_to :user
  has_one :article
  has_many :save_article
  has_many :like
end
