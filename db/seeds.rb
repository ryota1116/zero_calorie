require './db/seeds/user'
Dir[File.expand_path('../seeds/food', __FILE__) << '/*.rb'].each do |file|
  require file
end
require './db/seeds/meal_record'

# Food.create!([
#   {
#     name: "アイスコーヒー",
#     calorie: 0,
#     calorie_theory: "コーヒーを抽出している時、ゼロカロリーの成分だけが抽出されている。"
#   },
#   {
#     name: "白ごはん",
#     calorie: 0,
#     calorie_theory: "白い食べ物はカロリーが白紙に戻るからカロリーゼロ。"
#   }
# ])

# 3.times do |i|
#   Article.create(user_id: User.find(i+1).id, title: "Star Wars #{i+1}")
# end
