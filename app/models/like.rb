class Like < ApplicationRecord
  belongs_to :user
  belongs_to :user_article
  belongs_to :article
end
