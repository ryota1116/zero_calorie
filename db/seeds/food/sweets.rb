FoodGenre.create!([
  {
    genre_name: "スイーツ",
    calorie: 0,
    calorie_theory: "甘いものは、しょっぱいものを食べればカロリーが中和されてゼロカロリーになる。",
  },
])

Food.create!([
  {
    name: "コーヒーゼリー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "プリン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "タピオカ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "サンドイッチ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ベーグル",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "フルーツサンド",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チョコレート",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チョコケーキ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ショートケーキ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "モンブラン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "フルーツケーキ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "パフェ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "クッキー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ドーナツ",
    calorie: 0,
    calorie_theory: "真ん中に丸い穴があるからカロリーゼロ",
    labels: []
  },
  {
    name: "シュークリーム",
    calorie: 0,
    calorie_theory: "シュークリームは空気のかたまりのようなもの。",
    labels: []
  },
  {
    name: "ゼリー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ジェラート",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カステラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "抹茶アイス",
    calorie: 0,
    calorie_theory: "抹茶が入っている食べ物は食べ物をクルクル回せばカロリーがゼロになる。そのためのお作法。",
    labels: []
  },
  {
    name: "パンケーキ",
    calorie: 0,
    calorie_theory: "上から見ると丸いからカロリーゼロ。",
    labels: []
  },
  {
    name: "ホットケーキ",
    calorie: 0,
    calorie_theory: "上から見ると丸いからカロリーゼロ。",
    labels: []
  },
  {
    name: "クレープ",
    calorie: 0,
    calorie_theory: "クレープは元々丸い形で焼いてるからカロリーゼロ。",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "コーヒーゼリー").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "プリン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "タピオカ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "サンドイッチ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ベーグル").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "フルーツサンド").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "チョコレート").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "チョコケーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ショートケーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "モンブラン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "フルーツケーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "パフェ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "クッキー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ドーナツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "シュークリーム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ゼリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ジェラート").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "カステラ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "抹茶アイス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "パンケーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "ホットケーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "スイーツ").id,
    food_id: Food.find_by(name: "クレープ").id
  },
])
