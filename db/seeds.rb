# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# be rails db:seed

Food.create!([
  {
    name: "アイスコーヒー",
    calorie: 0,
    calorie_theory: "コーヒーを抽出している時、ゼロカロリーの成分だけが抽出されている。"
  },
  {
    name: "白ごはん",
    calorie: 0,
    calorie_theory: "白い食べ物はカロリーが白紙に戻るからカロリーゼロ。"
  }
])

# 3.times do |i|
#   Article.create(user_id: User.find(i+1).id, title: "Star Wars #{i+1}")
# end
