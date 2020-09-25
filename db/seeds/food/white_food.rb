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
    labels: ["rice"]
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "",
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
    food_id: Food.find_by(name: "").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "白い食べ物").id,
    food_id: Food.find_by(name: "").id
  },
])
