class SaveArticle < ApplicationRecord
  belongs_to :user
  belongs_to :article
  belongs_to :user_article
end
