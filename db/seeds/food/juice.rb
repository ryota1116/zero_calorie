# ジュース
FoodGenre.create!([
  {
    id: "1"
    genre_name: "ジュース",
    calorie: 0,
    calorie_theory: "ジュースはカロリーゼロ。まず水分にもカロリーが含まれているという通説を一旦ここで否定すべき。起源を辿れば全て水と何ら変わらないため、ジュースもカロリーゼロである。",
  },
])

Food.create!([
  {
    name: "オレンジジュース",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "りんごジュース",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ぶどうジュース",
    calorie: 0,
    labels: []
  },
  {
    name: "ミックスジュース",
    calorie: 0,
    labels: []
  },
  {
    name: "コーラ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ジンジャーエール",
    calorie: 0,
    labels: []
  },
  {
    name: "サイダー",
    calorie: 0,
    labels: []
  },
  {
    name: "ソーダ",
    calorie: 0,
    calorie_theory: "",
    labels: []
  },
  {
    name: "ラムネ",
    calorie: 0,
    labels: []
  },
  {
    name: "ペプシ",
    calorie: 0,
    labels: []
  },
  {
    name: "Qoo",
    calorie: 0,
    labels: []
  },
  {
    name: "CCレモン",
    calorie: 0,
    labels: []
  },
  {
    name: "ドデカミン",
    calorie: 0,
    labels: []
  },
  {
    name: "ファンタ",
    calorie: 0,
    labels: []
  },
])

FoodFoodGenre.create!([
  {
    food_genre_id: 1,
    food_id: 1
  },
])
