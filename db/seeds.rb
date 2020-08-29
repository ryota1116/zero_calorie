# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# be rails db:seed
User.create!([
  { name: "りょうた",
    email: "user@example.com",
    password: "0000",
    password_confirmation: "0000"
  },
])

Food.create!([
  { name: "アイスクリーム",
    calorie: 0,
    calorie_theory: "アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
    labels: ["Food", "Ice cream", "Frozen dessert", "Dish", "Dondurma", "Cuisine", "Vanilla ice cream", "Ingredient", "Sorbet", "Gelato", "Dessert", "Frozen yogurt", "Cream", "Vanilla", "Dairy"]
  },
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

FoodGenre.create!([
  {
    genre_name: "アイス",
    calorie: 0,
    calorie_theory: "アイスはカロリーゼロ。冷たくすることでカロリーが全部飛ぶから、何を食べても安心。",
  },
])

FoodFoodGenre.create!([
  {
    food_id: 1,
    food_genre_id: 1
  },
])

# 3.times do |i|
#   Article.create(user_id: User.find(i+1).id, title: "Star Wars #{i+1}")
# end

MealRecord.create!([
  {
    meal_time: Date.current,
    food_id: 1,
    user_id: 1
  },
])
