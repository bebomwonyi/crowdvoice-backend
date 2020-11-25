class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :webname
      t.string :author
      t.string :title
      t.string :description
      t.string :link
      t.string :imglink
      t.datetime :createdate
      t.string :content

      t.timestamps
    end
  end
end
