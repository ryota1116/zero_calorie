# == Schema Information
#
# Table name: meal_pictures
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MealPicture < ApplicationRecord
  has_many :meal_record_meal_pictures, dependent: :destroy
  has_many :meal_records, through: :meal_record_meal_pictures

  has_one_attached :search_picture
end
