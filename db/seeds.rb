# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1=User.create(name: "shima", email: "shima@example.com", password:"shima")
u2=User.create(name: "kasa", email: "kasa@example.com", password:"kasa")

b1=Blog.create(name: "title_shima_blog", email: "shima@example.com", content:"todays events", user_id: u1.id)
b2=Blog.create(name: "title_kasa_blog", email: "kasa@example.com", content:"todays events", user_id: u2.id)

Favorite.create(user_id: u1.id, blog_id: b2.id)
Favorite.create(user_id: u2.id, blog_id: b1.id)

