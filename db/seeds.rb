# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


skill_categories = [
  {category_name: "SNSマーケ", skills: ["FB", "Twitter"]},
  {category_name: "EC", skills: ["shopify"]},
  {category_name: "Webマーケ", skills: ["seo"]},
  {category_name: "Web制作", skills: ["wp", "nocode"]}
]

skill_categories.each do |skill_category|
  category = SkillCategory.find_or_create_by(name: skill_category[:category_name])
  skill_category[:skills].each do |skill|
    category.skills.find_or_create_by(name: skill)
  end
end