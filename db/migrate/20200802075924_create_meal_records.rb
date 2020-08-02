class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_records do |t|
      t.datetime :meal_time

      t.timestamps
    end
  end
end
