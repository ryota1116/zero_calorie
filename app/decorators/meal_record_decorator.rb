# frozen_string_literal: true

module MealRecordDecorator
  def drawing_calorie_theory
    if food.calorie_theory.present?
      food.calorie_theory
    elsif food.food_genres.present?
      food.food_genres[0].calorie_theory
    else
      'カロリー理論が登録されていません'
    end
  end
end
