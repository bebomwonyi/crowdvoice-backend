class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :age, :bio, :image, :user_articles
end
