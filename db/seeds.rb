# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


big_categories = [
  {big_category: "SNSマーケ", categories: ["FB", "Twitter"]},
  {big_category: "EC・ネットショップ", categories: ["shopify"]},
  {big_category: "Webマーケ", categories: ["seo"]},
  {big_category: "Web制作", categories: ["wp", "nocode"]}
]

big_categories.each do |big_category|
  category = BigCategory.find_or_create_by(name: big_category[:big_category])
  big_category[:categories].each do |category_name|
    category.categories.find_or_create_by(name: category_name)
  end
end