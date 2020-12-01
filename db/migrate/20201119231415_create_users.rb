class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :username
      t.string :password_digest
      t.string :bio, default: "im a cool person"
      t.string :image, default: "https://icon-library.com/images/default-user-icon/default-user-icon-4.jpg"

      t.timestamps
    end
  end
end
