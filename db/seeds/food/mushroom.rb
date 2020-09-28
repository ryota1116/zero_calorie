
FoodGenre.create!([
  {
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
    labels: ["Mushroom"]
  },
  {
    name: "エリンギ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom", "Pleurotus eryngii"]
  },
  {
    name: "きくらげ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "しいたけ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Shiitake", "Mushroom", "Champignon mushroom"]
  },
  {
    name: "しめじ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom"]
  },
  {
    name: "なめこ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom"]
  },
  {
    name: "舞茸",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom"]
  },
  {
    name: "マッシュルーム",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom"]
  },
  {
    name: "松茸",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mushroom"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "えのき").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "エリンギ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "きくらげ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "しいたけ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "しめじ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "なめこ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "舞茸").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "マッシュルーム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "きのこ類").id,
    food_id: Food.find_by(name: "松茸").id
  },
])
