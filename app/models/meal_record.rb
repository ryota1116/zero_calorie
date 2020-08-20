# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_meal_records_on_food_id  (food_id)
#  index_meal_records_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (food_id => foods.id)
#  fk_rails_...  (user_id => users.id)
#

# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class MealRecord < ApplicationRecord
  belongs_to :user
  belongs_to :food

  has_one_attached :meal_record_picture

  validates :meal_time, presence: true

end
