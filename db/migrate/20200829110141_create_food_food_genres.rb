class CreateFoodFoodGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :food_food_genres do |t|
      t.references :food, null: false, foreign_key: true
      t.references :food_genre, null: false, foreign_key: true

      t.timestamps
    end

    add_index :food_food_genres, [:food_id, :food_genre_id], unique: true
  end
end
