FoodGenre.create!([
  {
    genre_name: "和菓子",
    calorie: 0,
    calorie_theory: "和菓子はわびさびを体現した食べ物。わびさびの心にカロリーの話を持ち出すのは言語道断。",
  },
])

Food.create!([
  {
    name: "まんじゅう",
    calorie: 0,
    calorie_theory: "",
    labels: ["Manjū", "Mochi", "Daifuku", "Mantou"]
  },
  {
    name: "おはぎ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "あんこ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Azuki bean"]
  },
  {
    name: "八橋",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "赤福",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "団子",
    calorie: 0,
    calorie_theory: "",
    labels: ["Dango"]
  },
  {
    name: "3色団子",
    calorie: 0,
    calorie_theory: "",
    labels: ["Dango"]
  },
  {
    name: "みたらし団子",
    calorie: 0,
    calorie_theory: "",
    labels: ["Dango"]
  },
  {
    name: "あんみつ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "きんつば",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "大福",
    calorie: 0,
    calorie_theory: "",
    labels: ["Manjū", "Mochi", "Daifuku", "Mantou"]
  },
  {
    name: "いちご大福",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "フルーツ大福",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "抹茶アイス",
    calorie: 0,
    calorie_theory: "抹茶が入っている食べ物は食べ物をクルクル回せばカロリーがゼロになる。そのためのお作法。",
    labels: ["Pistachio ice cream"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "まんじゅう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "おはぎ").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "あんこ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "八橋").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "赤福").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "団子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "3色団子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "みたらし団子").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "あんみつ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "きんつば").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "大福").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "いちご大福").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "フルーツ大福").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "和菓子").id,
    food_id: Food.find_by(name: "抹茶アイス").id
  },
])
