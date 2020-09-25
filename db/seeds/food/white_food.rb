FoodGenre.create!([
  {
    genre_name: "白い食べ物",
    calorie: 0,
    calorie_theory: "白い食べ物はカロリーが白紙に戻るからカロリーゼロ。",
  },
])

Food.create!([
  {
    name: "白ごはん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Rice", "Steamed rice", "Glutinous rice", "White rice"]
  },
  {
    name: "ヨーグルト",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "牛乳",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "豆乳",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "生クリーム",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "砂糖",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カルピス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "白ごはん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "ヨーグルト").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "牛乳").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "豆乳").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "生クリーム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "砂糖").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "カルピス").id
  },
])
