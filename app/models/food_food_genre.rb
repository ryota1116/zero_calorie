# == Schema Information
#
# Table name: food_food_genres
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  food_genre_id :bigint           not null
#  food_id       :bigint           not null
#
# Indexes
#
#  index_food_food_genres_on_food_genre_id              (food_genre_id)
#  index_food_food_genres_on_food_id                    (food_id)
#  index_food_food_genres_on_food_id_and_food_genre_id  (food_id,food_genre_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (food_genre_id => food_genres.id)
#  fk_rails_...  (food_id => foods.id)
#
class FoodFoodGenre < ApplicationRecord
  belongs_to :food
  belongs_to :food_genre

  # food_idとfood_genre_idの組み合わせは一意でなければならない
  validates :food_id, uniqueness: { scope: :food_genre_id }
end
