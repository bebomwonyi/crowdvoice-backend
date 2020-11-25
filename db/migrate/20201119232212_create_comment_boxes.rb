class CreateCommentBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_boxes do |t|
      t.integer :article_id

      t.timestamps
    end
  end
end
