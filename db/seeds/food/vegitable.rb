FoodGenre.create!([
  {
    id: "1"
    genre_name: "野菜",
    calorie: 0,
    calorie_theory: "野菜を食べれば全てのカロリーが無効化される。当然野菜自体もカロリーゼロ。",
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
    labels: []
  },
  {
    name: "パプリカ",
    calorie: 0,
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
    labels: []
  },
  {
    name: "アナゴ丼",
    calorie: 0,
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
    labels: []
  },
  {
    name: "ズッキーニ",
    calorie: 0,
    labels: []
  },
  {
    name: "ヘチマ",
    calorie: 0,
    labels: []
  },
  {
    name: "オクラ",
    calorie: 0,
    labels: []
  },
  {
    name: "キャベツ",
    calorie: 0,
    labels: []
  },
  {
    name: "シュンギク",
    calorie: 0,
    labels: []
  },
  {
    name: "セロリ",
    calorie: 0,
    labels: []
  },
  {
    name: "高菜",
    calorie: 0,
    labels: []
  },
  {
    name: "ちんげん菜",
    calorie: 0,
    labels: []
  },
  {
    name: "白菜",
    calorie: 0,
    labels: []
  },
  {
    name: "パセリ",
    calorie: 0,
    labels: []
  },
  {
    name: "ほうれん草",
    calorie: 0,
    labels: []
  },
  {
    name: "水菜",
    calorie: 0,
    labels: []
  },
  {
    name: "レタス",
    calorie: 0,
    labels: []
  },
  {
    name: "カブ",
    calorie: 0,
    labels: []
  },
  {
    name: "三つ葉",
    calorie: 0,
    labels: []
  },
  {
    name: "ルッコラ",
    calorie: 0,
    labels: []
  },
  {
    name: "チシャ菜",
    calorie: 0,
    labels: []
  },
  {
    name: "タマネギ",
    calorie: 0,
    labels: []
  },
  {
    name: "ニラ",
    calorie: 0,
    labels: []
  },
  {
    name: "ニンニク",
    calorie: 0,
    labels: []
  },
  {
    name: "ネギ",
    calorie: 0,
    labels: []
  },
  {
    name: "ラッキョウ",
    calorie: 0,
    labels: []
  },
  {
    name: "アスパラガス",
    calorie: 0,
    labels: []
  },
  {
    name: "たけのこ",
    calorie: 0,
    labels: []
  },
  {
    name: "大根",
    calorie: 0,
    labels: []
  },
  {
    name: "ゴボウ",
    calorie: 0,
    labels: []
  },
  {
    name: "ショウガ",
    calorie: 0,
    labels: []
  },
  {
    name: "人参",
    calorie: 0,
    labels: []
  },
  {
    name: "蓮根",
    calorie: 0,
    labels: []
  },
  {
    name: "ブロッコリー",
    calorie: 0,
    labels: []
  },
  {
    name: "カリフラワー、
    ",
    calorie: 0,
    labels: []
  },
  {
    name: "フキノトウ",
    calorie: 0,
    labels: []
  },
  {
    name: "ミョウガ",
    calorie: 0,
    labels: []
  },
  {
    name: "さつまいも",
    calorie: 0,
    labels: []
  },
  {
    name: "里芋",
    calorie: 0,
    labels: []
  },
  {
    name: "じゃがいも",
    calorie: 0,
    labels: []
  },
  {
    name: "長芋",
    calorie: 0,
    labels: []
  },
  {
    name: "山芋",
    calorie: 0,
    labels: []
  },
  {
    name: "  モヤシ",
    calorie: 0,
    labels: []
  },
  {
    name: "カイワレ大根",
    calorie: 0,
    labels: []
  }
])

FoodFoodGenre.create!([
  {
    food_genre_id: 1,
    food_id: 1
  },
])
