# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Article.destroy_all
CommentBox.destroy_all
Comment.destroy_all

u1 = User.create!(name: "ben" , age: 22 , username: "benjamin", password: "password", bio:"just a dude" )

a1 = Article.create!( author: "author" , title: "test article" , description: "this is a test article", createdate: "2020-11-20T09:20:19Z" , content: "this is the content of the article")

cb1 = CommentBox.create!( article_id: a1.id )

c1 = Comment.create!( comment_box_id: cb1.id , user_id: u1.id , content: "this is a test comment" )

