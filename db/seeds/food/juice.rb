# ジュース
FoodGenre.create!([
  {
    genre_name: "ジュース",
    calorie: 0,
    calorie_theory: "ジュースの起源を辿れば行き着く先は水である。結局水と同じくカロリーゼロ。",
  },
])

Food.create!([
  {
    name: "オレンジジュース",
    calorie: 0,
    calorie_theory: "",
    labels: ["Orange soft drink", "Orange juice", "Orange drink"]
  },
  {
    name: "りんごジュース",
    calorie: 0,
    calorie_theory: "",
    labels: ["Apple juice", "Apple"]
  },
  {
    name: "ぶどうジュース",
    calorie: 0,
    calorie_theory: "",
    labels: ["Grape Juice", "Grape"]
  },
  {
    name: "ミックスジュース",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "コーラ",
    calorie: 0,
    calorie_theory: "炭酸のシュワシュワからカロリーが弾け飛ぶ。",
    labels: ["Cola", "Coca-cola"]
  },
  {
    name: "ジンジャーエール",
    calorie: 0,
    calorie_theory: "炭酸のシュワシュワからカロリーが弾け飛ぶ。",
    labels: []
  },
  {
    name: "サイダー",
    calorie: 0,
    calorie_theory: "炭酸のシュワシュワからカロリーが弾け飛ぶ。",
    labels: ["Water"]
  },
  {
    name: "ソーダ",
    calorie: 0,
    calorie_theory: "炭酸のシュワシュワからカロリーが弾け飛ぶ。",
    labels: []
  },
  {
    name: "ラムネ",
    calorie: 0,
    calorie_theory: "ラムネに入ったビー玉が、カロリーを吸収するからカロリーゼロ。",
    labels: []
  },
  {
    name: "ペプシ",
    calorie: 0,
    calorie_theory: "炭酸のシュワシュワからカロリーが弾け飛ぶ。",
    labels: []
  },
  {
    name: "Qoo",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "CCレモン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ドデカミン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ファンタ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "紅茶",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "抹茶",
    calorie: 0,
    calorie_theory: "抹茶の入った容器をクルクルと回せばカロリーゼロになる。アレはそのためのお作法。",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "オレンジジュース").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "りんごジュース").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ぶどうジュース").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ミックスジュース").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "コーラ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ジンジャーエール").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "サイダー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ソーダ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ラムネ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ペプシ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "Qoo").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "CCレモン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ドデカミン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "ファンタ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "紅茶").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "ジュース").id,
    food_id: Food.find_by(name: "抹茶").id
  },
])
