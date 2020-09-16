class CreateFoodGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :food_genres do |t|
      t.string :genre_name, null: false, unique: true
      t.integer :calorie, null: false
      t.text :calorie_theory, null: false

      t.timestamps
    end

    add_index :food_genres, :genre_name, unique: true
  end
end
