# ジュース
FoodGenre.create!([
  {
    id: "1"
    genre_name: "イタリアン",
    calorie: 0,
    calorie_theory: "",
  },
])

Food.create!([
  {
    name: "ピザ",
    calorie: 0,
    calorie_theory: "ピザはカロリーゼロ。ピザの丸い形はカロリーゼロの0を表している。",
    labels: []
  },
  {
    name: "パスタ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ピラフ",
    calorie: 0,
    labels: []
  },
  {
    name: "マルゲリータ",
    calorie: 0,
    labels: []
  },
  {
    name: "カルボナーラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ペペロンチーノ",
    calorie: 0,
    labels: []
  },
  {
    name: "チーズ",
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
