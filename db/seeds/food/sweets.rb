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
    labels: ["Gelatin dessert", "Gelatin"]
  },
  {
    name: "プリン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Flan", "Caramel", "Panna cotta"]
  },
  {
    name: "タピオカ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Taho", "Dessert", "Grass jelly"]
  },
  {
    name: "サンドイッチ",
    calorie: 0,
    calorie_theory: "ゼロカロリー理論の提唱者が由来にする食べ物。当然カロリーゼロ。",
    labels: ["Sandwich"]
  },
  {
    name: "ベーグル",
    calorie: 0,
    calorie_theory: "",
    labels: ["Bagel", "Baked goods", "Bread", "Pandebono", "Bialy", "Anpan"]
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
    labels: ["Chocolate", "Chocolate bar", "Chocolate letter", "Chocolate cake"]
  },
  {
    name: "チョコケーキ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chocolate cake", "Chocolate", "Chocolate brownie"]
  },
  {
    name: "ショートケーキ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Cake", "Whipped cream"]
  },
  {
    name: "モンブラン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mont blanc"]
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
    labels: ["Sundae", "Frozen dessert"]
  },
  {
    name: "クッキー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Bizcochito", "Dessert"]
  },
  {
    name: "ドーナツ",
    calorie: 0,
    calorie_theory: "真ん中に丸い穴があるからカロリーゼロ",
    labels: ["Doughnut", "Cider doughnut", "Bagel"]
  },
  {
    name: "シュークリーム",
    calorie: 0,
    calorie_theory: "シュークリームは空気のかたまりのようなもの。",
    labels: ["Gougère"]
  },
  {
    name: "ゼリー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Gelatin dessert", "Gelatin", "Blancmange"]
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
    labels: ["Castella"]
  },
  {
    name: "パンケーキ",
    calorie: 0,
    calorie_theory: "上から見ると丸いからカロリーゼロ。",
    labels: ["Bisquick", "Pancake", "Breakfast"]
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
    labels: ["Palatschinke", "Dessert", "Cannoli"]
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
