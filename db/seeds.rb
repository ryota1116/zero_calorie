# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.create!([
  { name: "アイスクリーム",
    calorie: 0,
    calorie_theory: "アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
    labels: ["Food", "Ice cream", "Frozen dessert", "Dish", "Dondurma", "Cuisine", "Vanilla ice cream", "Ingredient", "Sorbet", "Gelato", "Dessert", "Frozen yogurt", "Cream", "Vanilla", "Dairy"]
  },
  {
    name: "アイスコーヒー",
    calorie: 0,
    calorie_theory: "コーヒーを抽出している時に、カロリーがゼロの成分だけ抽出されている。"
  },
  {
    name: "白ごはん",
    calorie: 0,
    calorie_theory: "白い食べ物はカロリーが白紙に戻るからカロリーゼロ。"
  }
])