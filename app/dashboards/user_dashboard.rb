require 'administrate/base_dashboard'

class UserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    meal_records: Field::HasMany,
    authentications: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    crypted_password: Field::String,
    salt: Field::String,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    role: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys })
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    meal_records
    authentications
    id
    email
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    meal_records
    authentications
    id
    email
    crypted_password
    salt
    name
    created_at
    updated_at
    role
  ].freeze

  FORM_ATTRIBUTES = %i[
    meal_records
    authentications
    email
    crypted_password
    salt
    name
    role
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
