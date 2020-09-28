FoodGenre.create!([
  {
    genre_name: "肉",
    calorie: 0,
    calorie_theory: "肉にはL-カルニチンという脂肪の燃焼を助けてくれる成分が多く含まれている。つまり食べれば食べるだけ脂肪が燃焼されるから、カロリーはゼロ。むしろマイナス。",
  },
])

Food.create!([
  {
    name: "牛肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Beef", "Red meat", "Yakiniku"]
  },
  {
    name: "豚肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Red meat", "Pork steak"]
  },
  {
    name: "鶏肉",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken meat", "Red meat", "Chicken breast", "Drunken chicken"]
  },
  {
    name: "豚足",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "豚の角煮",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鶏レバー",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "鶏むね",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken meat", "Chicken breast", "Drunken chicken"]
  },
  {
    name: "ささみ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken meat", "Chicken breast", "Drunken chicken"]
  },
  {
    name: "手羽先",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken meat"]
  },
  {
    name: "鴨肉",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ジンギスカン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Jingisukan", "Instant-boiled mutton", "Yakiniku"]
  },
  {
    name: "ホルモン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Horumonyaki", "Horumon", "Grilling"]
  },
  {
    name: "チーズタッカルビ",
    calorie: 0,
    calorie_theory: "",
    labels: "Dak galbi"]
  },
  {
    name: "ステーキ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Flat iron steak", "Beef tenderloin", "Sirloin steak", "Beef"]
  },
  {
    name: "ベーコン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Bacon", "Animal fat", "Veal", "Samgyeopsal"]
  },
  {
    name: "ハム",
    calorie: 0,
    calorie_theory: "",
    labels: ["Ham", "Gammon", "Fish slice", "Samgyeopsal", "Animal fat"]
  },
  {
    name: "ソーセージ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Frankfurter würstchen", "Sausage", "Cumberland sausage", "Thuringian sausage", "Cervelat", "Vienna sausage", "Italian sausage"]
  },
  {
    name: "ウインナー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Frankfurter würstchen", "Sausage", "Cumberland sausage", "Thuringian sausage", "Cervelat", "Vienna sausage", "Italian sausage"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "牛肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚足").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "豚の角煮").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏レバー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鶏むね").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ささみ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "手羽先").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "鴨肉").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ジンギスカン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ホルモン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "チーズタッカルビ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ステーキ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ベーコン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ハム").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ソーセージ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "肉").id,
    food_id: Food.find_by(name: "ウインナー").id
  },
])
