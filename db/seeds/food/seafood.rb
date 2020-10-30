FoodGenre.create!([
  {
    genre_name: "海鮮",
    calorie: 0,
    calorie_theory: "海鮮はカロリーゼロ。カロリーは水溶性だから、海水に溶け出している。",
  },
])

Food.create!([
  {
    name: "マグロ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sashimi", "Tataki", "Fish"]
  },
  {
    name: "いわし",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sardine", "Pacific saury", "Mackerel", "Fish"]
  },
  {
    name: "さんま",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sardine", "Pacific saury", "Mackerel", "Fish"]
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
    labels: ["Smoked salmon", "Fish slice", "Kasuzuke", "Sashimi", "Salmon", "Sockeye salmon"]
  },
  {
    name: "サーモン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Fish slice", "Sashimi", "Smoked salmon", "Fish slice", "Kasuzuke", "Sockeye salmon"]
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
    labels: ["Fish", "Fish products", "Red seabream", "Seabream"]
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
    labels: ["Unadon", "Kabayaki", "Unagi", "Eel"]
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
    labels: ["Crab", "King crab", "Seafood", "Crab meat", "Botan shrimp", "Horsehair crab", "Crustacean"]
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
    labels: ["Sea snail", "Shankha", "Shell", "Conch", "Snails and slugs"]
  },
  {
    name: "あわび",
    calorie: 0,
    calorie_theory: "",
    labels: ["Abalone", "Mussel", "Clam", "Seafood"]
  },
  {
    name: "ほたて",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mussel", "Clam", "Seafood" "Shellfish", "Oyster", "Scallop", "Invertebrate", "Bivalve"]
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
    labels: ["Caviar", "Orange"]
  },
  {
    name: "鯖(さば)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Sardine", "Pacific saury", "Mackerel", "Fish"]
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
  {
    food_genre_id: FoodGenre.find_by(genre_name: "海鮮").id,
    food_id: Food.find_by(name: "鯖(さば)").id
  },
])
