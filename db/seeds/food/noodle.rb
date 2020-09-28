# 鍋料理
FoodGenre.create!([
  {
    genre_name: "麺類",
    calorie: 0,
    calorie_theory: "鍋ものはカロリーゼロ。お鍋が沸騰している間にカロリーが蒸発している。",
  },
])

Food.create!([
  {
    name: "そば",
    calorie: 0,
    calorie_theory: "",
    labels: ["Soba", "Shirataki noodles", "Sōmen"]
  },
  {
    name: "うどん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Udon", "Shirataki noodles", "Stringozzi"]
  },
  {
    name: "坦々麺",
    calorie: 0,
    calorie_theory: "",
    labels: ["Ramen", "Noodle", "Noodle soup"]
  },
  {
    name: "ちゃんぽん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Asian soups", "Yaka mein"]
  },
  {
    name: "冷麺",
    calorie: 0,
    calorie_theory: "",
    labels: ["Naengmyeon", "Canh chua"]
  },
  {
    name: "冷やし中華",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle soup", "Fried noodles"]
  },
  {
    name: "油そば",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Yaki udon", "Ramen", "Carbonara"]
  },
  {
    name: "焼きそば",
    calorie: 0,
    calorie_theory: "",
    labels: ["Yakisoba", "Carbonara", "Noodle", "Yaki udon"]
  },
  {
    name: "焼うどん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Yaki udon", "Yakisoba"]
  },
  {
    name: "ラーメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "醤油ラーメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "とんこつラーメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "みそラーメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "塩ラーメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "中華そば",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Lamian", "Naengmyeon", "Noodle soup"]
  },
  {
    name: "二郎（二郎系ラーメン）",
    calorie: 0,
    calorie_theory: "",
    labels: ["Ramen", "Opor ayam", "Bubur ayam", "Comfort food", "Noodle", "Lamian", "Noodle soup"]
  },
  {
    name: "つけ麺",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle"]
  },
  {
    name: "素麺(そうめん)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Shirataki noodles", "Sōmen", "Rice noodles"]
  },
  {
    name: "サンラータンメン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Ramen"]
  },
  {
    name: "カレーうどん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle soup", "Udon"]
  },
  {
    name: "ざるそば",
    calorie: 0,
    calorie_theory: "",
    labels: ["Soba", "Fried noodles", "Chow mein", "Yi mein", "Sōmen"]
  },
  {
    name: "鍋焼きうどん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Yaki udon", "Udon"]
  },
])


FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "そば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "うどん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "坦々麺").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "ちゃんぽん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "冷麺").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "冷やし中華").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "油そば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "焼きそば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "焼うどん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ラーメン").id,
    food_id: Food.find_by(name: "醤油ラーメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "とんこつラーメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "みそラーメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "塩ラーメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "中華そば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "二郎系ラーメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "つけ麺").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "素麺(そうめん)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "サンラータンメン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "カレーうどん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "ざるそば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "麺類").id,
    food_id: Food.find_by(name: "鍋焼きうどん").id
  },
])
