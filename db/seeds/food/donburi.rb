FoodGenre.create!([
  {
    genre_name: "丼モノ",
    calorie: 0,
    calorie_theory: "丼物のお椀は上から見ると円を描いている。あれはカロリーゼロの0を表している。",
  },
])

Food.create!([
  {
    name: "親子丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Donburi", "Oyakodon"]
  },
  {
    name: "牛丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Gyūdon", "Donburi"]
  },
  {
    name: "豚丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Bubur ayam", "Gyūdon", "Donburi"]
  },
  {
    name: "天丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Panko", "Tempura", "Fried food"]
  },
  {
    name: "カツ丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Donburi", "Oyakodon", "Katsudon", "Donburi"]
  },
  {
    name: "しらす丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Donburi"]
  },
  {
    name: "穴子丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Eel", "Unagi", "Unadon", "Kabayaki"]
  },
  {
    name: "うな重",
    calorie: 0,
    calorie_theory: "",
    labels: ["Eel", "Unagi", "Kabayaki", "Unadon"]
  },
  {
    name: "海老重",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "親子丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "牛丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "豚丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "天丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "カツ丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "しらす丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "穴子丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "うな重").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "丼モノ").id,
    food_id: Food.find_by(name: "海老重").id
  },
])
