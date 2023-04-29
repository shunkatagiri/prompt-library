# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User
user = User.create!(email: "unique_email@example.com", password: "password", password_confirmation: "password")

# Category
category = Category.create!(name: "Category 1")

# PromptTemplate
prompt_template = PromptTemplate.create!(title: "Prompt 1", content: "This is a test prompt.", user_id: user.id, category_id: category.id)

# Like
Like.create!(user_id: user.id, prompt_template_id: prompt_template.id)

# Comment
Comment.create!(content: "This is a test comment.", user_id: user.id, prompt_template_id: prompt_template.id)
