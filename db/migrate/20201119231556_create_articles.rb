class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :user_article_id
      t.string :refarttitle, default: "not available"
      t.string :refartimgurl, default: "not available"
      t.string :refarturl, default: "not available"
      t.string :author
      t.string :title
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
