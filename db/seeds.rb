# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

source_routes = ["Facebookをみて", "Twitterをみて", "noteをみて", "検索してみて", "口コミ・紹介", "その他"]
source_routes.each do |source_route|
  SourceRoute.find_or_create_by(title: source_route)
end


big_categories = [

  {big_category: "SNSマーケティング", categories: ["戦略", "企画", "分析", "売上アップ", "コスト削減", "集客", "内製化・インハウス", "アカウント運用", "広告運用", "ブランディング", "インフルエンサーマーケティング", "撮影・写真", "画像・サムネイル・バナー", "コピー・ライティング", "Facebook", "Instagram", "Twitter", "LINE", "Youtube", "Tiktok", "Pinterest", "その他"]},

  {big_category: "EC・ネットショップ", categories: ["戦略", "企画", "分析", "売上アップ", "コスト削減", "集客", "内製化・インハウス", "ECサイト構築・制作", "ECサイト運用・運営", "撮影・写真", "画像・サムネイル・バナー", "コピー・ライティング", "決済システム", "Webマーケティング", "SNSマーケティング", "インフルエンサーマーケティング", "広告運用", "ブランディング", "D2C","Amazon", "楽天", "Yahoo!ショッピング", "Shopify", "BASE", "STORES", "WordPress", "EC-CUBE", "カラーミーショップ", "MakeShop", "Stripe", "Instagram", "その他"]},

  {big_category: "Webマーケティング", categories: ["戦略", "企画", "分析", "売上アップ", "コスト削減", "集客", "内製化・インハウス", "サイト構築・制作", "サイト運用・運営", "撮影・写真", "画像・サムネイル・バナー", "コピー・ライティング", "広告運用", "SEO", "MEO", "リスティング", "リターゲティング", "ディスプレイ", "アドネットワーク", "ブログ", "オウンドメディア", "アフィリエイト", "ホームページ", "Webサイト", "LP・ランディングページ", "動画マーケティング", "メールマーケティング", "アクセス解析", "Google", "Google AdWords", "Google Map", "Googleマイビジネス", "Googleアナリティクス", "Yahoo!JAPAN", "その他"]},

  {big_category: "Web制作", categories: ["戦略", "企画", "分析", "売上アップ", "コスト削減", "集客", "内製化・インハウス", "UIUX", "ワイヤーフレーム・モックアップ",  "サイト構築・制作", "サイト運用・運営", "ロゴ", "撮影・写真", "画像・サムネイル・バナー", "コピー・ライティング", "ホームページ", "Webサイト", "LP・ランディングページ", "コーディング・マークアップ", "サーバー", "ドメイン", "データベース", "問合せ・予約・注文フォーム", "Illustrator", "Photoshop", "Adobe XD", "Figma", "WordPress", "Wix", "STUDIO", "HTML・CSS", "その他"]}
]

big_categories.each do |big_category|
  category = BigCategory.find_or_create_by(name: big_category[:big_category])
  big_category[:categories].each do |category_name|
    category.categories.find_or_create_by(name: category_name)
  end
end