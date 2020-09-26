FoodGenre.create!([
  {
    genre_name: "フルーツ",
    calorie: 0,
    calorie_theory: "フルーツは野菜の一種。野菜にカロリーは無い。",
  },
])

Food.create!([
  {
    name: "アボカド",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "いちご",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "いちじく",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "梅",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "オレンジ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "柿",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "キウイ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "グレープフルーツ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "さくらんぼ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ざくろ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "シークワーサー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "スイカ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ドライフルーツ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "梨(なし)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "パイナップル",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "バナナ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ぶどう",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ブルーベリー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "マスカット",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "マンゴー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "みかん",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "メロン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "桃(もも)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ゆず",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ラズベリー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "りんご",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "レーズン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "レモン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "アボカド").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "いちご").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "いちじく").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "梅").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "オレンジ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "柿").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "キウイ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "グレープフルーツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "さくらんぼ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ザクロ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "シークワーサー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "スイカ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ドライフルーツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "梨(なし)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "パイナップル").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "バナナ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ぶどう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ブルーベリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "マスカット").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "マンゴー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "みかん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "メロン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "桃(もも)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ゆず").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ラズベリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "りんご").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "レーズン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "レモン").id
  },
])
