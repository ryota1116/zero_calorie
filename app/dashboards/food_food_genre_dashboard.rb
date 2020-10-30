require 'administrate/base_dashboard'

class FoodFoodGenreDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    food: Field::BelongsTo,
    food_genre: Field::BelongsTo,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    food
    food_genre
    id
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    food
    food_genre
    id
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    food
    food_genre
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
