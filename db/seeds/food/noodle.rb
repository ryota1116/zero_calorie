# 鍋料理
FoodGenre.create!([
  {
    id: "1"
    genre_name: "麺類",
    calorie: 0,
    calorie_theory: "鍋ものはカロリーゼロ。お鍋が沸騰している間にカロリーが蒸発している。",
  },
])

Food.create!([
  {
    name: "中国鍋",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "サムゲタン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鍋焼きうどん",
    calorie: 0,
    labels: []
  },
  {
    name: "すき焼き",
    calorie: 0,
    labels: []
  },
  {
    name: "しゃぶしゃぶ",
    calorie: 0,
    labels: []
  },
  {
    name: "もつ鍋",
    calorie: 0,
    labels: []
  },
  {
    name: "土手鍋",
    calorie: 0,
    labels: []
  },
  {
    name: "ちゃんこ",
    calorie: 0,
    labels: []
  },
  {
    name: "おでん",
    calorie: 0,
    labels: []
  },
  {
    name: "寄せ鍋",
    calorie: 0,
    labels: []
  },
  {
    name: "水炊き",
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
