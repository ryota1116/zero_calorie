FoodGenre.create!([
  {
    genre_name: "揚げ物",
    calorie: 0,
    calorie_theory: "カロリーは高温には耐えられないので、揚げ物はカロリーゼロ。",
  },
])

Food.create!([
  {
    name: "コロッケ",
    calorie: 0,
    calorie_theory: "じゃがいもは野菜。パン粉に包んで油で揚げる事で、若干あるカロリーが油に逃げてしまう。",
    labels: ["Menchi-katsu", "Korokke", "Cutlet"]
  },
  {
    name: "メンチカツ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Menchi-katsu", "Korokke", "Cutlet"]
  },
  {
    name: "唐揚げ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Crispy fried chicken", "Fried food", "Karaage"]
  },
  {
    name: "かき揚げ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Tempura", "Fried food", "Deep frying", "Fried prawn", "Panko"]
  },
  {
    name: "春巻き",
    calorie: 0,
    calorie_theory: "",
    labels: ["Nem rán", "Spring roll", "Lumpia", "Nem"]
  },
  {
    name: "油淋鶏",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ナゲット",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken nugget"]
  },
  {
    name: "天ぷら",
    calorie: 0,
    calorie_theory: "",
    labels: ["Tempura", "Fried food", "Deep frying", "Fried prawn", "Panko"]
  },
  {
    name: "フリッター",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "チキンナゲット",
    calorie: 0,
    calorie_theory: "",
    labels: ["Chicken nugget", "French fries"]
  },
  {
    name: "フライドポテト",
    calorie: 0,
    calorie_theory: "",
    labels: ["French fries"],
  },
  {
    name: "海老天",
    calorie: 0,
    calorie_theory: "",
    labels: ["Shrimp", "Tempura", "Fried food", "Deep frying", "Fried prawn", "Panko"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "コロッケ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "メンチカツ").id
  },

  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "唐揚げ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "かき揚げ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "春巻き").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "ナゲット").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "天ぷら").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "フリッター").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "チキンナゲット").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "フライドポテト").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "揚げ物").id,
    food_id: Food.find_by(name: "海老天").id
  },
])

