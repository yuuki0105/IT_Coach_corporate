# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

source_routes = ["Facebookをみて", "Twitterをみて", "noteをみて", "プレスリリースをみて", "検索してみて", "口コミ・紹介", "その他"]
source_routes.each do |source_route|
  SourceRoute.find_or_create_by(title: source_route)
end


big_categories = [

  {big_category: "SNSマーケティング", categories: ["SNSマーケティング"]},

  {big_category: "EC・ネットショップ", categories: ["EC・ネットショップ"]},

  {big_category: "Webマーケティング", categories: ["Webマーケティング"]},

  {big_category: "Web制作", categories: ["Web制作"]},

  {big_category: "その他", categories: ["その他"]}
]

big_categories.each do |big_category|
  category = BigCategory.find_or_create_by(name: big_category[:big_category])
  big_category[:categories].each do |category_name|
    category.categories.find_or_create_by(name: category_name)
  end
end