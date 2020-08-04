class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.json :keywords # NULLABLE
      t.integer :calorie, null:false
      t.text :calorie_theory # NULLABLE

      t.timestamps
    end
  end
end
