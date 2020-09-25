FoodGenre.create!([
  {
    genre_name: "沖縄料理",
    calorie: 0,
    calorie_theory: "「なんくるないさ」＝「カロリーゼロさ」",
  },
])

Food.create!([
  {
    name: "紅芋タルト",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "紫芋タルト",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "海ぶどう",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "泡盛",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チャンプルー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ゴーヤチャンプル",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ブルーシール",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "A&W",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "とうふよう",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ミミガー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ちんすこう",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "三枚肉",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "沖縄そば",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "サーターアンダギー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "紅芋タルト").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "紫芋タルト").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "海ぶどう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "泡盛").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "チャンプルー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "ゴーヤチャンプル").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "ブルーシール").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "A&W").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "とうふよう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "ミミガー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "ちんすこう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "三枚肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "沖縄料理").id,
    food_id: Food.find_by(name: "沖縄そば").id
  },
])
