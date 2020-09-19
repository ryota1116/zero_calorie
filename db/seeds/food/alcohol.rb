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
    labels: []
  },
  {
    name: "赤ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "白ワイン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "焼酎",
    calorie: 0,
    calorie_theory: "",
    labels: []
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
    name: "サワー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "スパークリングワイン、",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ホッピー",
    calorie: 0,
    calorie_theory: "ホッピーハッピーカロリーゼロ！",
    labels: [],
  },
])


# FoodFoodGenre.create!([
#   {
#     food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
#     food_id: Food.find_by(name: "アイスクリーム").id
#   },
#   {
#     food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
#     food_id: Food.find_by(name: "ソフトクリーム").id
#   },
#   {
#     food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
#     food_id: Food.find_by(name: "ガリガリ君").id
#   },
#   {
#     food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
#     food_id: Food.find_by(name: "パピコ").id
#   },
#   {
#     food_genre_id: FoodGenre.find_by(genre_name: "アイス").id,
#     food_id: Food.find_by(name: "かき氷").id
#   },
# ])
