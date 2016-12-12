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

u1p1 = Post.create(user_id: u1.id, title:"user1 post1", content:"content", category:"Technology")
u1p2 = Post.create(user_id: u1.id, title:"user1 post2", content:"content", category:"Home")

u2p1 = Post.create(user_id: u2.id, title:"user2 post1", content:"content", category:"Business")
u2p2 = Post.create(user_id: u2.id, title:"user2 post2", content:"content", category:"Outdoors")

u3p1 = Post.create(user_id: u3.id, title:"user3 post1", content:"content", category:"Health")
u3p2 = Post.create(user_id: u3.id, title:"user3 post2", content:"content", category:"Other")

u4p1 = Post.create(user_id: u4.id, title:"user4 post1", content:"content", category:"Health")
u4p2 = Post.create(user_id: u4.id, title:"user4 post2", content:"content", category:"Outdoors")

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


u1g1 = Group.create(name:"User1 Group1", user_id:"1", description:"Description text (includes User1 User2)")
u1g2 = Group.create(name:"User1 Group2", user_id:"1", description:"Description text (includes User3 User4)")

u2g1 = Group.create(name:"User2 Group1", user_id:"2", description:"Description text (includes User1 User2)")
u2g2 = Group.create(name:"User2 Group2", user_id:"2", description:"Descripti1n text (includes User3 User4)")

u3g1 = Group.create(name:"User3 Group1", user_id:"3", description:"Description text (includes User1 User2)")
u3g2 = Group.create(name:"User3 Group2", user_id:"3", description:"Description text (includes User3 User4)")

u4g1 = Group.create(name:"User4 Group1", user_id:"4", description:"Description text (includes User1 User2)")
u4g2 = Group.create(name:"User4 Group2", user_id:"4", description:"Description text (includes User3 User4)")

u1.groups << u1g1
u1.groups << u2g1
u1.groups << u3g1
u1.groups << u4g1

u1.groups << u1g2
u1.groups << u2g2
u1.groups << u3g2
u1.groups << u4g2

u2.groups << u1g1
u2.groups << u2g1
u2.groups << u3g1
u2.groups << u4g1

u2.groups << u1g2
u2.groups << u2g2
u2.groups << u3g2
u2.groups << u4g2

u3.groups << u1g1
u3.groups << u2g1
u3.groups << u3g1
u3.groups << u4g1

u3.groups << u1g2
u3.groups << u2g2
u3.groups << u3g2
u3.groups << u4g2

u4.groups << u1g1
u4.groups << u2g1
u4.groups << u3g1
u4.groups << u4g1

u4.groups << u1g2
u4.groups << u2g2
u4.groups << u3g2
u4.groups << u4g2

u1g1p1 = Post.create(user_id: u1.id, group_id: u1g1.id , title:"user1 group1 post1", content:"content", category:"Technology")
u1g1p2 = Post.create(user_id: u1.id, group_id: u1g1.id , title:"user1 group1 post2", content:"content", category:"Home")

u1g2p1 = Post.create(user_id: u1.id, group_id: u1g2.id, title:"user1 group2 post1", content:"content", category:"Business")
u1g2p2 = Post.create(user_id: u1.id, group_id: u1g2.id, title:"user1 group2 post2", content:"content", category:"Outdoors")


u2g1p1 = Post.create(user_id: u2.id, group_id: u2g1.id , title:"user2 group1 post1", content:"content", category:"Technology")
u2g1p2 = Post.create(user_id: u2.id, group_id: u2g1.id , title:"user2 group1 post2", content:"content", category:"Home")

u2g2p1 = Post.create(user_id: u2.id, group_id: u2g2.id, title:"user2 group2 post1", content:"content", category:"Business")
u2g2p2 = Post.create(user_id: u2.id, group_id: u2g2.id, title:"user2 group2 post2", content:"content", category:"Outdoors")


u3g1p1 = Post.create(user_id: u3.id, group_id: u3g1.id , title:"user3 group1 post1", content:"content", category:"Technology")
u3g1p2 = Post.create(user_id: u3.id, group_id: u3g1.id , title:"user3 group1 post2", content:"content", category:"Home")

u3g2p1 = Post.create(user_id: u3.id, group_id: u3g2.id, title:"user3 group2 post1", content:"content", category:"Business")
u3g2p2 = Post.create(user_id: u3.id, group_id: u3g2.id, title:"user3 group2 post2", content:"content", category:"Outdoors")


u4g1p1 = Post.create(user_id: u4.id, group_id: u4g1.id , title:"user4 group1 post1", content:"content", category:"Technology")
u4g1p2 = Post.create(user_id: u4.id, group_id: u4g1.id , title:"user4 group1 post2", content:"content", category:"Home")

u4g2p1 = Post.create(user_id: u4.id, group_id: u4g2.id, title:"user4 group2 post1", content:"content", category:"Business")
u4g2p2 = Post.create(user_id: u4.id, group_id: u4g2.id, title:"user4 group2 post2", content:"content", category:"Outdoors")




u1g1p1c1 = Comment.create(user_id: u1.id, post_id: u1g1p1.id , comment_type:"type", content: "User1 group1 post1 Comment1")
u1g1p1c2 = Comment.create(user_id: u1.id, post_id: u1g1p1.id , comment_type:"type", content: "User1 group1 post1 Comment2")

u1g1p2c1 = Comment.create(user_id: u1.id, post_id: u1g1p2.id , comment_type:"type", content: "User1 group1 post2 Comment1")
u1g1p2c2 = Comment.create(user_id: u1.id, post_id: u1g1p2.id , comment_type:"type", content: "User1 group1 post2 Comment2")


u1g2p1c1 = Comment.create(user_id: u2.id, post_id: u1g2p1.id , comment_type:"type", content: "User1 group2 post1 Comment1")
u1g2p1c2 = Comment.create(user_id: u2.id, post_id: u1g2p1.id , comment_type:"type", content: "User1 group2 post1 Comment2")

u1g2p2c1 = Comment.create(user_id: u2.id, post_id: u1g2p2.id , comment_type:"type", content: "User1 group2 post2 Comment1")
u1g2p2c2 = Comment.create(user_id: u2.id, post_id: u1g2p2.id , comment_type:"type", content: "User1 group2 post2 Comment2")



u2g1p1c1 = Comment.create(user_id: u1.id, post_id: u2g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment1")
u2g1p1c2 = Comment.create(user_id: u1.id, post_id: u2g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment2")

u2g1p2c1 = Comment.create(user_id: u1.id, post_id: u2g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment1")
u2g1p2c2 = Comment.create(user_id: u1.id, post_id: u2g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment2")


u2g2p1c1 = Comment.create(user_id: u2.id, post_id: u2g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment1")
u2g2p1c2 = Comment.create(user_id: u2.id, post_id: u2g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment2")

u2g2p2c1 = Comment.create(user_id: u2.id, post_id: u2g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment1")
u2g2p2c2 = Comment.create(user_id: u2.id, post_id: u2g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment2")



u3g1p1c1 = Comment.create(user_id: u1.id, post_id: u3g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment1")
u3g1p1c2 = Comment.create(user_id: u1.id, post_id: u3g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment2")

u3g1p2c1 = Comment.create(user_id: u1.id, post_id: u3g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment1")
u3g1p2c2 = Comment.create(user_id: u1.id, post_id: u3g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment2")


u3g2p1c1 = Comment.create(user_id: u2.id, post_id: u3g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment1")
u3g2p1c2 = Comment.create(user_id: u2.id, post_id: u3g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment2")

u3g2p2c1 = Comment.create(user_id: u2.id, post_id: u3g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment1")
u3g2p2c2 = Comment.create(user_id: u2.id, post_id: u3g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment2")



u4g1p1c1 = Comment.create(user_id: u1.id, post_id: u4g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment1")
u4g1p1c2 = Comment.create(user_id: u1.id, post_id: u4g1p1.id , comment_type:"type", content: "User1 Group1 post1 Comment2")

u4g1p2c1 = Comment.create(user_id: u1.id, post_id: u4g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment1")
u4g1p2c2 = Comment.create(user_id: u1.id, post_id: u4g1p2.id , comment_type:"type", content: "User1 Group1 post2 Comment2")


u4g2p1c1 = Comment.create(user_id: u2.id, post_id: u4g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment1")
u4g2p1c2 = Comment.create(user_id: u2.id, post_id: u4g2p1.id , comment_type:"type", content: "User2 Group2 post1 Comment2")

u4g2p2c1 = Comment.create(user_id: u2.id, post_id: u4g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment1")
u4g2p2c2 = Comment.create(user_id: u2.id, post_id: u4g2p2.id , comment_type:"type", content: "User2 Group2 post2 Comment2")
