class CreateFoodGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :food_genres do |t|
      t.string :genre_name, null: false, unique: true
      t.integer :calorie, null: false
      t.text :calorie_theory, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
