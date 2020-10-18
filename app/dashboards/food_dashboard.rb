require "administrate/base_dashboard"

class FoodDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    meal_records: Field::HasMany,
    food_food_genres: Field::HasMany,
    food_genres: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    labels: Field::String.with_options(searchable: false),
    calorie: Field::Number,
    calorie_theory: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  name
  calorie_theory
  food_genres
  meal_records
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  meal_records
  food_food_genres
  food_genres
  id
  name
  labels
  calorie
  calorie_theory
  created_at
  updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  meal_records
  food_food_genres
  food_genres
  name
  labels
  calorie
  calorie_theory
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how foods are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(food)
  #   "Food ##{food.id}"
  # end
end
