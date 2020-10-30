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
FactoryBot.define do
  factory :food_food_genre do
    # food { nil }
    # food_genre { nil }

    # trait :noodle do
    #   food_genre_id { FoodGenre.find_by(genre_name: "麺類").id }
    #   food_id { Food.find_by(name: "醤油ラーメン") }
    # end
  end
end
