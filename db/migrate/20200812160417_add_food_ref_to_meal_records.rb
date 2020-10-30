class AddFoodRefToMealRecords < ActiveRecord::Migration[6.0]
  def change
    add_reference :meal_records, :food, null: false, foreign_key: true
  end
end
