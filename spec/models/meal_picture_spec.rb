# == Schema Information
#
# Table name: meal_pictures
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  meal_record_id :bigint           not null
#
# Indexes
#
#  index_meal_pictures_on_meal_record_id  (meal_record_id)
#
# Foreign Keys
#
#  fk_rails_...  (meal_record_id => meal_records.id)
#
require 'rails_helper'

RSpec.describe MealPicture, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
