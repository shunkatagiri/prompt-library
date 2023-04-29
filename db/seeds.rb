# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: "test@example.com", password: "password", password_confirmation: "password")
Category.create!(name: "Category 1")
PromptTemplate.create!(title: "Prompt 1", content: "This is a test prompt.", user_id: 1)
