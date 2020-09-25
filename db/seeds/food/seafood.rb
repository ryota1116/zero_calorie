FoodGenre.create!([
  {
    genre_name: "海鮮",
    calorie: 0,
    calorie_theory: "海鮮はカロリーゼロ。カロリーは水溶性だから、全て海水に溶け出している。",
  },
])

Food.create!([
  {
    name: "マグロ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "いわし",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "さんま",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鮎(あゆ)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鮭(さけ)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "サーモン",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },{
    name: "ハマチ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ぶり",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ホッケ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },{
    name: "ひらめ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カレイ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ふぐ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鯛(たい)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カツオ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "カンパチ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "うなぎ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "穴子(あなご)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "たら",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "はも",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "たちうお",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },

  {
    name: "蟹(かに)",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "イカ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "たこ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "さざえ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "あわび",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ほたて",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "うに",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "いくら",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "マグロ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "いわし").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "さんま").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "鮎(あゆ)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "鮭(さけ)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "サーモン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ハマチ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ぶり").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ホッケ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ひらめ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "カレイ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ふぐ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "鯛(たい)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "カツオ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "カンパチ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "うなぎ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "穴子(あなご)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "たら").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "はも").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "たちうお").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "蟹(かに)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "イカ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "たこ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "さざえ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "あわび").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "ほたて").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "うに").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "いくら").id
  },
])
