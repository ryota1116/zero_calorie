require 'administrate/base_dashboard'

class FoodGenreDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    food_food_genres: Field::HasMany,
    foods: Field::HasMany,
    id: Field::Number,
    genre_name: Field::String,
    calorie: Field::Number,
    calorie_theory: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    food_food_genres
    foods
    id
    genre_name
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    food_food_genres
    foods
    id
    genre_name
    calorie
    calorie_theory
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    food_food_genres
    foods
    genre_name
    calorie
    calorie_theory
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
