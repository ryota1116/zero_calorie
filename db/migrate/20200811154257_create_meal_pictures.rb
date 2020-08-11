class CreateMealPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_pictures do |t|
      t.references :meal_record, null: false, foreign_key: true

      t.timestamps
    end
  end
end
