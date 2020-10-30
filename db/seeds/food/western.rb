FoodGenre.create!([
  {
    genre_name: "洋食",
    calorie: 0,
    calorie_theory: "幕末から明治期にかけて日本で洋食が発展した理由はカロリーゼロだったから。文明開花の音がする。",
  },
])

Food.create!([
  {
    name: "スープカレー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Rice and curry", "Curry", "Japanese curry", "Hayashi rice", "Gumbo", "Stew"]
  },
  {
    name: "カレーライス",
    calorie: 0,
    calorie_theory: "",
    labels: ["Rice and curry", "Curry", "Japanese curry", "Hayashi rice", "Gumbo", "Stew"]
  },
  {
    name: "キーマカレー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Rice and curry", "Curry", "Japanese curry", "Hayashi rice", "Gumbo", "Stew"]
  },
  {
    name: "ハヤシライス",
    calorie: 0,
    calorie_theory: "",
    labels: ["Hayashi rice", "Chasseur", "Rice and curry", "Curry", "Japanese curry"]
  },
  {
    name: "オムライス",
    calorie: 0,
    calorie_theory: "",
    labels: ["Omurice", "Omelette", "Tomato omelette"]
  },
  {
    name: "オムレツ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Omurice", "Omelette", "Tomato omelette"]
  },
  {
    name: "シチュー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Stew", "Varenyky", "Pelmeni"]
  },
  {
    name: "チーズフォンデュ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Fondue", "Aligot", "Aioli", "Dip", "Béchamel sauce"]
  },
  {
    name: "ハンバーグ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Roast beef", "Rinderbraten", "Brown sauce", "Roast beef", "Salisbury steak"]
  },
  {
    name: "ビーフシチュー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Boeuf à la mode", "Boiled beef", "Brown sauce", "Stew"]
  },
  {
    name: "カツカレー",
    calorie: 0,
    calorie_theory: "カレーのカロリーと、とんかつのカロリーが一緒になることで、カロリー同士がぶつかり合って喧嘩するのでカロリーゼロ。",
    labels: ["Rice and curry", "Curry", "Japanese curry", "Hayashi rice", "Gumbo", "Stew"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "スープカレー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "カレーライス").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "キーマカレー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "ハヤシライス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "オムライス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "オムレツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "シチュー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "チーズフォンデュ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "ハンバーグ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "洋食").id,
    food_id: Food.find_by(name: "ビーフシチュー").id
  },
])
