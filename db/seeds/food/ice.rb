FoodGenre.create!([
  {
    id: "1"
    genre_name: "アイス",
    calorie: 0,
    calorie_theory: "アイスはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
  },
])

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
  {
    name: "ガリガリ君",
    calorie: 0,
    calorie_theory: "ガリガリだからカロリーゼロ。",
    labels: []
  },
  {
    name: "パピコ",
    calorie: 0,
    labels: []
  },
  {
    name: "かき氷",
    calorie: 0,
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: 1,
    food_id: 1
  },
])
