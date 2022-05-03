# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# book=Book.create(title: 'Luke', description: "ljfadaljf;lda")
# book.build_author(name: "aaa").save

10.times do
  title  = Faker::Name.name
  description = Faker::Name.name
  name = Faker::Lorem.sentence(word_count: 20)
  book=Book.create!(title: title,
              description: description
              )
  10.times do
    book.authors.create!(name: name)
  end
end

# 3.times do |n|
#   name  = Faker::Name.name
#   age = "#{n+40}"
#   user = User.create!(name:  name,
#               age: age)
#   10.times do |n|
#     description = Faker::Lorem.sentence(word_count: 20)
#     career = Faker::Lorem.sentence(word_count: 10)
#     user.skills.create!(
#       description: description,
#       career: career
#     )
#   end
# end

# ユーザー
# User.create!(name:  "Example User",
#              email: "example@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              admin:     true,
#              activated: true,
#              activated_at: Time.zone.now)

# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password,
#                activated: true,
#                activated_at: Time.zone.now)
# end

# # マイクロポスト
# users = User.order(:created_at).take(6)
# 50.times do
#   content = Faker::Lorem.sentence(word_count: 5)
#   users.each { |user| user.microposts.create!(content: content) }
# end

# # 以下のリレーションシップを作成する
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }