FoodGenre.create!([
  {
    genre_name: "アイス",
    calorie: 0,
    calorie_theory: "冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。",
  },
])

Food.create!([
  {
    name: "アイスクリーム",
    calorie: 0,
    calorie_theory: "",
    labels: ["Food", "Ice cream", "Frozen dessert", "Dish", "Dondurma", "Cuisine", "Vanilla ice cream", "Ingredient", "Sorbet", "Gelato", "Dessert", "Frozen yogurt", "Cream", "Vanilla", "Dairy"]
  },
  {
    name: "ソフトクリーム",
    calorie: 0,
    calorie_theory: "ソフトをゼロを描くようにグルグルと盛り付けてるが、アレはゼロカロリーを表している",
    labels: ["Ice cream cone", "Ice cream", "Soft Serve Ice Creams"]
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
    calorie_theory: "",
    labels: []
  },
  {
    name: "かき氷",
    calorie: 0,
    calorie_theory: "",
    labels: ["Kakigōri", "Sorbetes", "Frozen dessert"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
    food_id: Food.find_by(name: "アイスクリーム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
    food_id: Food.find_by(name: "ソフトクリーム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
    food_id: Food.find_by(name: "ガリガリ君").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
    food_id: Food.find_by(name: "パピコ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
    food_id: Food.find_by(name: "かき氷").id
  },
])
