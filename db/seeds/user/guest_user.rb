User.create!([
  {
    id: 1,
    name: "ゲストユーザー",
    email: "guest@example.com",
    password: "0000",
    password_confirmation: "0000",
    role: :guest,
  },
])

5.times do |record|
  MealRecord.create!([
    {
      meal_time: Date.current,
      user_id: 1,
      food_id: 1
    },
  ])
end
