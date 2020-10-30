FoodGenre.create!([
  {
    genre_name: "フルーツ",
    calorie: 0,
    calorie_theory: "フルーツは野菜の一種。野菜にカロリーは無い。",
  },
])

Food.create!([
  {
    name: "アボカド",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "いちご",
    calorie: 0,
    calorie_theory: "",
    labels: ["Strawberry", "Strawberries", "Berry"]
  },
  {
    name: "いちじく",
    calorie: 0,
    calorie_theory: "",
    labels: ["Fig", "Common fig"]
  },
  {
    name: "梅",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "オレンジ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Valencia orange", "Bitter orange", "Rangpur", "Orange", "Clementine", "Tangelo", "Peel", "Tangerine", "Mandarin orange", "Citrus"]
  },
  {
    name: "柿",
    calorie: 0,
    calorie_theory: "",
    labels: ["Persimmon", "Common persimmon", "Ebony trees and persimmons", "Vegan nutrition"]
  },
  {
    name: "キウイ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Kiwi", "Hardy kiwi", "Kiwifruit"]
  },
  {
    name: "グレープフルーツ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Grapefruit juice", "Citric acid", "Grapefruit", "Citrus", "Orange"]
  },
  {
    name: "さくらんぼ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Cherry", "Currant", "Cranberry", "Berry"]
  },
  {
    name: "ザクロ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "シークワーサー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Key lime", "Persian lime", "Rangpur", "Sweet lemon", "Citrus", "Lime", "Lemon"]
  },
  {
    name: "スイカ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Melon", "Watermelon"]
  },
  {
    name: "ドライフルーツ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Dried fruit"]
  },
  {
    name: "梨(なし)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Pear", "Accessory fruit", "Asian pear", "Apple"]
  },
  {
    name: "パイナップル",
    calorie: 0,
    calorie_theory: "",
    labels: ["Pineapple", "Ananas", "Poales", "Bromeliaceae"]
  },
  {
    name: "バナナ",
    calorie: 0,
    calorie_theory: "",
    labels: ["Banana family", "Banana", "Saba banana", "Cooking plantain"]
  },
  {
    name: "ぶどう",
    calorie: 0,
    calorie_theory: "",
    labels: ["Grapevine family", "Grape leaves", "Seedless fruit" "Grape"]
  },
  {
    name: "ブルーベリー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Berry", "Bilberry", "Blueberry", "Juniper berry", "Huckleberry", "Frutti di bosco"]
  },
  {
    name: "マスカット",
    calorie: 0,
    calorie_theory: "",
    labels: ["Grapevine family", "Grape leaves"]
  },
  {
    name: "マンゴー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Mango", "Nectarines", "Mangifera", "Ataulfo"]
  },
  {
    name: "みかん",
    calorie: 0,
    calorie_theory: "",
    labels: ["Orange", "Clementine", "Tangelo", "Peel", "Tangerine", "Mandarin orange", "Citrus"]
  },
  {
    name: "メロン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Galia", "Muskmelon", "Cantaloupe", "Melon", "Honeydew"]
  },
  {
    name: "桃(もも)",
    calorie: 0,
    calorie_theory: "",
    labels: ["Prunus", "Apricot", "Pink", "Peach"]
  },
  {
    name: "ゆず",
    calorie: 0,
    calorie_theory: "",
    labels: ["Lemon", "Citron", "Sweet lemon", "Lemon", "Key lime", "Lime", "Persian lime"]
  },
  {
    name: "ラズベリー",
    calorie: 0,
    calorie_theory: "",
    labels: ["Berry", "Raspberry", "Loganberry", "West Indian raspberry"]
  },
  {
    name: "りんご",
    calorie: 0,
    calorie_theory: "",
    labels: ["Apple", "Pectin"]
  },
  {
    name: "レーズン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Raisin", "Dried fruit", "Sultana", "Grape", "Prune", "Grapevine family", "Zante currant"]
  },
  {
    name: "レモン",
    calorie: 0,
    calorie_theory: "",
    labels: ["Lemon", "Lemon peel", "Meyer lemon", "Citrus", "Lime"]
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "アボカド").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "いちご").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "いちじく").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "梅").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "オレンジ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "柿").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "キウイ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "グレープフルーツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "さくらんぼ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ザクロ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "シークワーサー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "スイカ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ドライフルーツ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "梨(なし)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "パイナップル").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "バナナ").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ぶどう").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ブルーベリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "マスカット").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "マンゴー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "みかん").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "メロン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "桃(もも)").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ゆず").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "ラズベリー").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "りんご").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "レーズン").id
  },
  {
    food_genre_id: FoodGenre.find_by(genre_name: "フルーツ").id,
    food_id: Food.find_by(name: "レモン").id
  },
])
