class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_records do |t|
      t.datetime :meal_time, null:false # DEFAULTで現在時刻にするか否か

      t.timestamps
    end
  end
end
