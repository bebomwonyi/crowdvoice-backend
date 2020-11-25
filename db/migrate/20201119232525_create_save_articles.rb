class CreateSaveArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :save_articles do |t|
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
