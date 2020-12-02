class CreateUserArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_articles do |t|
      t.integer :user_id
      t.string :refarttitle
      t.string :refartimgurl
      t.string :refarturl
      t.string :author
      t.string :title
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
