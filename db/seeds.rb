# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username:"user1", email:"email1@gmail.com", password:"desafio")
u2 = User.create(username:"user2", email:"email2@gmail.com", password:"desafio")
u3 = User.create(username:"user3", email:"email3@gmail.com", password:"desafio")
u4 = User.create(username:"user4", email:"email4@gmail.com", password:"desafio")

u1p1 = Post.create(user_id: u1.id, title:"user1 post1", content:"content")
u1p2 = Post.create(user_id: u1.id, title:"user1 post2", content:"content")

u2p1 = Post.create(user_id: u2.id, title:"user2 post1", content:"content")
u2p2 = Post.create(user_id: u2.id, title:"user2 post2", content:"content")

u3p1 = Post.create(user_id: u3.id, title:"user3 post1", content:"content")
u3p2 = Post.create(user_id: u3.id, title:"user3 post2", content:"content")

u4p1 = Post.create(user_id: u4.id, title:"user4 post1", content:"content")
u4p2 = Post.create(user_id: u4.id, title:"user4 post2", content:"content")

u1p1c1 = Comment.create(user_id: u1.id, post_id: u1p1.id , comment_type:"type", content: "User1 post1 Comment1")
u1p1c2 = Comment.create(user_id: u1.id, post_id: u1p1.id , comment_type:"type", content: "User1 post1 Comment2")

u1p2c1 = Comment.create(user_id: u1.id, post_id: u1p2.id , comment_type:"type", content: "User1 post2 Comment1")
u1p2c2 = Comment.create(user_id: u1.id, post_id: u1p2.id , comment_type:"type", content: "User1 post2 Comment2")


u2p1c1 = Comment.create(user_id: u2.id, post_id: u2p1.id , comment_type:"type", content: "User2 post1 Comment1")
u2p1c2 = Comment.create(user_id: u2.id, post_id: u2p1.id , comment_type:"type", content: "User2 post1 Comment2")

u2p2c1 = Comment.create(user_id: u2.id, post_id: u2p2.id , comment_type:"type", content: "User2 post2 Comment1")
u2p2c2 = Comment.create(user_id: u2.id, post_id: u2p2.id , comment_type:"type", content: "User2 post2 Comment2")


u3p1c1 = Comment.create(user_id: u3.id, post_id: u3p1.id , comment_type:"type", content: "User3 post1 Comment1")
u3p1c2 = Comment.create(user_id: u3.id, post_id: u3p1.id , comment_type:"type", content: "User3 post1 Comment2")

u3p2c1 = Comment.create(user_id: u3.id, post_id: u3p2.id , comment_type:"type", content: "User3 post2 Comment1")
u3p2c2 = Comment.create(user_id: u3.id, post_id: u3p2.id , comment_type:"type", content: "User3 post2 Comment2")


u4p1c1 = Comment.create(user_id: u4.id, post_id: u4p1.id , comment_type:"type", content: "User4 post1 Comment1")
u4p1c2 = Comment.create(user_id: u4.id, post_id: u4p1.id , comment_type:"type", content: "User4 post1 Comment2")

u4p2c1 = Comment.create(user_id: u4.id, post_id: u4p2.id , comment_type:"type", content: "User4 post2 Comment1")
u4p2c2 = Comment.create(user_id: u4.id, post_id: u4p2.id , comment_type:"type", content: "User4 post2 Comment2")


g1 = Group.create(name:"Group1", user_id:"1", description:"Description text")
g2 = Group.create(name:"Group2", user_id:"1", description:"Description text")
g3 = Group.create(name:"Group3", user_id:"2", description:"Description text")
g4 = Group.create(name:"Group4", user_id:"2", description:"Description text")
