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
    calorie_theory: "",
    labels: ["sake"]
  },
  {
    name: "赤ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: ["wine"]
  },
  {
    name: "白ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: ["wine"]
  },
  {
    name: "焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: ["shochu"]
  },
  {
    name: "芋焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "麦焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ビール",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ハイボール",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "レモンサワー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "スパークリングワイン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ホッピー",
    calorie: 0,
    calorie_theory: "ホッピーハッピーカロリーゼロ",
    labels: [],
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
