class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.json :labels # NULLABLE
      t.integer :calorie, null:false, default: 0
      t.text :calorie_theory # NULLABLE

      t.timestamps
    end

    add_index :foods, :name, unique: true
  end
end
