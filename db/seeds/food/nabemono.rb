# 鍋料理
FoodGenre.create!([
  {
    genre_name: "鍋物",
    calorie: 0,
    calorie_theory: "鍋ものはカロリーゼロ。沸騰している間に、具のカロリーも出汁のカロリーも蒸発している。",
  },
])

Food.create!([
  {
    name: "中国鍋",
    calorie: 0,
    calorie_theory: "",
    labels: ["Jeongol", "Korean food"]
  },
  {
    name: "参鶏湯(サムゲタン)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Ginseng chicken soup", "Korean food", "Sinigang"]
  },
  {
    name: "すき焼き",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sukiyaki", "Jeongol"]
  },
  {
    name: "しゃぶしゃぶ",
    calorie: 0,
    calorie_theory: "カロリーをしゃぶしゃぶすることでカロリーゼロになる。",
    labels: ["Shabu-shabu", "Hot pot", "Chinese food"]
  },
  {
    name: "もつ鍋",
    calorie: 0,
    calorie_theory: "",
    labels: ["Motsunabe", "Nabemono", "Chankonabe"]
  },
  {
    name: "土手鍋",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nabemono", "Chankonabe", "Kamameshi"]
  },
  {
    name: "ちゃんこ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chankonabe", "Jeongol", "Nabemono"]
  },
  {
    name: "おでん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Oden", "Nabemono", "Hot pot"]
  },
  {
    name: "寄せ鍋",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nabemono"]
  },
  {
    name: "水炊き",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chankonabe", "Jeongol", "Nabemono"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "中国鍋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "参鶏湯(サムゲタン)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "鍋焼きうどん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "すき焼き").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "しゃぶしゃぶ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "もつ鍋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "土手鍋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "ちゃんこ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "おでん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "寄せ鍋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "鍋物").id,
    food_id: Food.find_by(name: "水炊き").id
  },
])
