FoodGenre.create!([
  {
    genre_name: "洋食",
    calorie: 0,
    calorie_theory: "",
  },
])

Food.create!([
  {
    name: "スープカレー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カレーライス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "キーマカレー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ハヤシライス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "オムライス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "シチュー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チーズフォンデュ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ハンバーグ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ビーフシチュー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "スープカレー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "カレーライス").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "キーマカレー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "ハヤシライス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "オムライス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "シチュー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "チーズフォンデュ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "ハンバーグ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "ビーフシチュー").id
  },
])
