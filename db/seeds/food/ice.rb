Food.create!([
  {
    name: "アイスクリーム",
    calorie: 0,
    calorie_theory: "アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
    labels: ["Food", "Ice cream", "Frozen dessert", "Dish", "Dondurma", "Cuisine", "Vanilla ice cream", "Ingredient", "Sorbet", "Gelato", "Dessert", "Frozen yogurt", "Cream", "Vanilla", "Dairy"]
  },
  {
    name: "ソフトクリーム",
    calorie: 0,
    calorie_theory: "ソフトクリームはカロリーゼロ。ソフトをゼロを描くようにグルグルと盛り付けてるが、アレはゼロカロリーを表している",
    labels: []
  },
])

FoodGenre.create!([
  {
    genre_name: "アイス",
    calorie: 0,
    calorie_theory: "アイスはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
  },
])

FoodFoodGenre.create!([
  {
    food_id: 1,
    food_genre_id: 1
  },
])