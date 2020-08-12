# == Schema Information
#
# Table name: meal_record_meal_pictures
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  meal_picture_id :bigint           not null
#  meal_record_id  :bigint           not null
#
# Indexes
#
#  index_meal_record_meal_pictures_on_meal_picture_id  (meal_picture_id)
#  index_meal_record_meal_pictures_on_meal_record_id   (meal_record_id)
#
# Foreign Keys
#
#  fk_rails_...  (meal_picture_id => meal_pictures.id)
#  fk_rails_...  (meal_record_id => meal_records.id)
#
require 'rails_helper'

RSpec.describe MealRecordMealPicture, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
