# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


big_categories = [
  {big_category: "SNSマーケティング", categories: ["Facebook", "Twitter", "Instagram", "LINE", "Youtube", "その他"]},
  {big_category: "EC・ネットショップ", categories: ["Amazon", "楽天", "Yahooショッピング", "Shopify"]},
  {big_category: "Webマーケティング", categories: ["SEO", "リスティング"]},
  {big_category: "Web制作・開発", categories: ["Wordpress", "nocode"]}
]

big_categories.each do |big_category|
  category = BigCategory.find_or_create_by(name: big_category[:big_category])
  big_category[:categories].each do |category_name|
    category.categories.find_or_create_by(name: category_name)
  end
end