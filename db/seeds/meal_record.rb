5.times do |record|
  MealRecord.create!([
    {
      meal_time: Date.current,
      food_id: 1,
      user_id: 1
    },
  ])
end
