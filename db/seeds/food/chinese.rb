FoodGenre.create!([
  {
    genre_name: "中華",
    calorie: 0,
    calorie_theory: "中国共産党の手にかかればカロリーを隠蔽することくらい容易いもの。（中国4000年の歴史は伊達ではない）",
  },
])

Food.create!([
  {
    name: "炒飯",
    calorie: 0,
    calorie_theory: "カロリーもパラパラになるから、カロリーゼロ。",
    labels: ["Spiced rice", "rice", "Steamed rice", "Thai fried rice", "Pilaf", "Brown rice"]
  },
  {
    name: "チンジャオロース",
    calorie: 0,
    calorie_theory: "",
    labels: ["Phat si io", "Karedok"]
  },
  {
    name: "酢豚",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sweet and sour chicken", "Sweet and sour pork", "Sweet and sour"]
  },
  {
    name: "回鍋肉(ホイコーロー)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Phat si io", "Moo goo gai pan"]
  },
  {
    name: "八宝菜",
    calorie: 0,
    calorie_theory: "",
    labels: ["Asian soups", "Champon", "Chinese food", "Cap cai"]
  },
  {
    name: "坦々麺",
    calorie: 0,
    calorie_theory: "",
    labels: ["Noodle", "Noodle soup", "Ramen", "Tantan noodles"]
  },
  {
    name: "餃子",
    calorie: 0,
    calorie_theory: "丸い皮で包んでいるからカロリーゼロ。",
    labels: ["Jiaozi"]
  },
  {
    name: "ムーシーロ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "天津飯",
    calorie: 0,
    calorie_theory: "",
    labels: ["Tianjin rice", "Egg drop soup"]
  },
  {
    name: "天津炒飯",
    calorie: 0,
    calorie_theory: "",
    labels: ["Tianjin rice", "Egg drop soup"]
  },
  {
    name: "中華丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chop suey", "Chinese food"]
  },
  {
    name: "麻婆丼",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mapo doufu"]
  },
  {
    name: "エビチリ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Shrimp", "Ebi chili"]
  },
  {
    name: "エビマヨ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Shrimp"]
  },
  {
    name: "肉団子",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "かに玉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Tianjin rice", "Egg drop soup"]
  },
  {
    name: "麻婆豆腐",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mapo doufu"]
  },
  {
    name: "肉まん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nikuman", "Cha siu bao", "Khinkali", "Baozi", "Xiaolongbao", "Bánh bao"]
  },
  {
    name: "豚まん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nikuman", "Cha siu bao", "Khinkali", "Baozi", "Xiaolongbao", "Bánh bao"]
  },
  {
    name: "あんまん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nikuman", "Cha siu bao", "Khinkali", "Baozi", "Xiaolongbao", "Bánh bao"]
  },
  {
    name: "小籠包",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nikuman", "Cha siu bao", "Khinkali", "Baozi", "Xiaolongbao", "Bánh bao"]
  },
  {
    name: "ごま団子",
    calorie: 0,
    calorie_theory: "",
    labels: ["Bánh rán", "Jin deui", "Sesame"]
  },
  {
    name: "マンゴープリン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Posset", "Zabaione", "Natillas", "Lassi", "Pudding"]
  },
  {
    name: "杏仁豆腐",
    calorie: 0,
    calorie_theory: "",
    labels: ["Filmjölk", "Yogurt", "Almond jelly"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "炒飯").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "チンジャオロース").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "酢豚").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "ホイコーロー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "八宝菜").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "坦々麺").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "餃子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "ムーシーロー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "天津飯").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "天津炒飯").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "中華丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "麻婆丼").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "エビチリ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "エビマヨ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "海老天").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "肉団子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "かに玉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "麻婆豆腐").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "肉まん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "豚まん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "あんまん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "小籠包").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "ごま団子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "マンゴープリン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "中華").id,
    food_id: Food.find_by(name: "杏仁豆腐").id
  },
])
