FoodGenre.create!([
  {
    id: "1"
    genre_name: "お酒／アルコール",
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
    labels: []
  },
  {
    name: "焼酎",
    calorie: 0,
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
    labels: []
  },
  {
    name: "ビール",
    calorie: 0,
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
    labels: []
  },
  {
    name: "スパークリングワイン、",
    calorie: 0,
    labels: []
  },
  {
    name: "ホッピー",
    calorie: 0,
    labels: [],
    calorie_theory: "ホッピーハッピーカロリーゼロ！",
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: 1,
    food_id: 1
  },
])
