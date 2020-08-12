class CreateMealPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_pictures do |t|

      t.timestamps
    end
  end
end
