require 'administrate/base_dashboard'

class MealPictureDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    search_picture_attachment: Field::HasOne,
    search_picture_blob: Field::HasOne,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    search_picture_attachment
    search_picture_blob
    id
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    search_picture_attachment
    search_picture_blob
    id
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    search_picture_attachment
    search_picture_blob
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
