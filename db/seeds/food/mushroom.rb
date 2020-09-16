
FoodGenre.create!([
  {
    id: "1"
    genre_name: "きのこ類",
    calorie: 0,
    calorie_theory: "",
  },
])

Food.create!([
  {
    name: "えのき",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "エリンギ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "キクラゲ",
    calorie: 0,
    labels: []
  },
  {
    name: "しいたけ",
    calorie: 0,
    labels: []
  },
  {
    name: "しめじ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "なめこ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "舞茸",
    calorie: 0,
    labels: []
  },
  {
    name: "マッシュルーム",
    calorie: 0,
    labels: []
  },
  {
    name: "松茸",
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
