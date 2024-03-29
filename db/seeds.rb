# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
user1 = User.create(email: "example1@example.com", password: "password", password_confirmation: "password")
user2 = User.create(email: "example2@example.com", password: "password", password_confirmation: "password")

# Category
default_category = Category.create!(name: "Default") # カテゴリ名を "Default" に変更

# PromptTemplate
prompt_template = PromptTemplate.create!(title: "Prompt 1", content: "This is a test prompt.", user_id: user1.id, category_id: default_category.id)

# Like
Like.create!(user_id: user1.id, prompt_template_id: prompt_template.id)

# Comment
Comment.create!(content: "This is a test comment.", user_id: user1.id, prompt_template_id: prompt_template.id)

# Categories
Category.create(name: "カテゴリ1", user_id: user1.id)
Category.create(name: "カテゴリ2", user_id: user1.id)
Category.create(name: "カテゴリ3", user_id: user2.id)
