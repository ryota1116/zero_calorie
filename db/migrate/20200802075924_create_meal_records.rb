class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_records do |t|
      t.datetime :meal_time, null:false # DEFAULTで現在時刻にするのは良くなさそう(https://qiita.com/bsdmad/items/83425569d9fedb9cbc10)

      t.timestamps
    end
  end
end
