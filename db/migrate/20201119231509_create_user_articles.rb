class CreateUserArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_articles do |t|
      t.string :webname
      t.string :author
      t.string :title
      t.string :description
      t.string :artlink
      t.string :imglink
      t.string :content

      t.timestamps
    end
  end
end
