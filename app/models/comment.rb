class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :comment_box
end
