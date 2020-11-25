class CommentBox < ApplicationRecord
  belongs_to :article
  has_many :comments
end
