FoodGenre.create!([
  {
    genre_name: "野菜",
    calorie: 0,
    calorie_theory: "野菜を食べれば全てのカロリーが無効化される。当然野菜自体のカロリーもゼロ。",
  },
])

Food.create!([
  {
    name: "ナス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "トマト",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ピーマン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "パプリカ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "トウガラシ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "かぼちゃ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "きゅうり",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ゴーヤ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ズッキーニ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ヘチマ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "オクラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "キャベツ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "シュンギク",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "セロリ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "高菜",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ちんげん菜",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "白菜",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "パセリ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ほうれん草",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "水菜",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "レタス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カブ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "三つ葉",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ルッコラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チシャ菜",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "タマネギ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ニラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ニンニク",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ネギ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ラッキョウ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "アスパラガス",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "たけのこ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "大根",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ゴボウ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ショウガ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "人参",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "蓮根",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ブロッコリー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カリフラワー、
    ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "フキノトウ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ミョウガ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "さつまいも",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "里芋",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "じゃがいも",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "長芋",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "山芋",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "モヤシ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カイワレ大根",
    calorie: 0,
    calorie_theory: "",
    labels: []
  }
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ナス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "トマト").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ピーマン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "パプリカ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "トウガラシ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "かぼちゃ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "きゅうり").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ゴーヤ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ズッキーニ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ヘチマ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "オクラ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "キャベツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "シュンギク").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "セロリ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "高菜").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ちんげん菜").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "白菜").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "パセリ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ほうれん草").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "水菜").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "レタス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "カブ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "三つ葉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ルッコラ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "チシャ菜").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: " タマネギ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "にら").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ニンニク").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ネギ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ラッキョウ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "アスパラガス").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "たけのこ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "大根").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ゴボウ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ショウガ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "人参").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "蓮根").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ブロッコリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "カリフラワー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "フキノトウ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "ミョウガ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "さつまいも").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "里芋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "じゃがいも").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "長芋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "山芋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "モヤシ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "野菜").id,
    food_id: Food.find_by(name: "カイワレ大根").id
  },
])
