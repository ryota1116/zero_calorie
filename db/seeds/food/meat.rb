FoodGenre.create!([
  {
    genre_name: "肉",
    calorie: 0,
    calorie_theory: "肉にはL-カルニチンという脂肪の燃焼を助けてくれる成分が多く含まれている。つまり食べれば食べるだけ脂肪が燃焼されるから、カロリーはゼロ。むしろマイナス。",
  },
])

Food.create!([
  {
    name: "牛肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Beef", "Red meat", "Yakiniku"]
  },
  {
    name: "豚肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Red meat",]
  },
  {
    name: "鶏肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Red meat",]
  },
  {
    name: "豚足",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "豚の角煮",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鶏レバー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鶏むね",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ささみ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "手羽先",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鴨肉",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "牛肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚足").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚の角煮").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏レバー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏むね").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ささみ").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "手羽先").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鴨肉").id
  },
])
