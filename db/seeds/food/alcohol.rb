FoodGenre.create!([
  {
    genre_name: "お酒",
    calorie: 0,
    calorie_theory: "お酒はカロリーゼロ。結局全て吐き出すのだから。",
  },
])

Food.create!([
  {
    name: "日本酒",
    calorie: 0,
    calorie_theory: "お米は白いからカロリーが白紙に戻る。日本酒はお米を発酵させて作るものだから、日本酒もカロリーゼロ。",
    labels: ["Sake", "Japanese whisky"]
  },
  {
    name: "赤ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Red wine", "Glass bottle", "Wine bottle", "Wine glass", "Wine"]
  },
  {
    name: "白ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: ["White wine", "Glass bottle", "Wine bottle", "Wine glass", "Wine"]
  },
  {
    name: "焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: ["Japanese whisky", "Glass bottle"]
  },
  {
    name: "芋焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: ["Japanese whisky", "Glass bottle"]
  },
  {
    name: "麦焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: ["Japanese whisky", "Glass bottle"]
  },
  {
    name: "ビール",
    calorie: 0,
    calorie_theory: "",
    labels: ["Beer glass", "Beer", "Pint glass", "Wheat beer", "Alcoholic beverage", "Beer cocktail"]
  },
  {
    name: "ハイボール",
    calorie: 0,
    calorie_theory: "",
    labels: ["Distilled beverage", "Gin and tonic", "Liqueur", "Mizuwari", "Rock"]
  },
  {
    name: "レモンサワー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Distilled beverage", "Gin and tonic"]
  },
  {
    name: "スパークリングワイン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Glass bottle", "Wine bottle", "Wine glass", "Wine"]
  },
  {
    name: "ホッピー",
    calorie: 0,
    calorie_theory: "ホッピーハッピーカロリーゼロ",
    labels: ["Beer bottle", "Distilled beverage", "Beer glass", "Beer", "Pint glass", "Wheat beer", "Alcoholic beverage", "Beer cocktail"],
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "日本酒").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "赤ワイン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "白ワイン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "焼酎").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "芋焼酎").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "麦焼酎").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "ビール").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "ハイボール").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "レモンサワー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "スパークリングワイン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "お酒").id,
    food_id: Food.find_by(name: "ホッピー").id
  },
])
