User.create!([
  {
    id: 1,
    name: "ゲストユーザー",
    email: "guest@example.com",
    password: "00000000",
    password_confirmation: "00000000",
    role: :guest,
  },
])

MealRecord.create!([
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 1
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 14
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 46
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 80
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 89
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 96
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 120
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 134
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 235
  },
  {
    meal_time: Date.current,
    user_id: 1,
    food_id: 238
  },{
    meal_time: Date.current,
    user_id: 1,
    food_id: 267
  },

])

