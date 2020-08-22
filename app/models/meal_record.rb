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

  # 日、週、月
  class << self
    def meal_time_date(day)
      where("? <= meal_time and meal_time <= ?",  day.beginning_of_day, day.end_of_day) if day.present?
    end

    def meal_time_week(day)
      where("? <= meal_time and meal_time <= ?",  day.beginning_of_week, day.end_of_week) if day.present?
    end

    def meal_time_month(day)
      where("? <= meal_time and meal_time <= ?",  day.beginning_of_month, day.end_of_month) if day.present?
    end

    def search_date(params)
      return if params.blank?

      meal_time_date(Date.parse(params[:meal_time]))
    end

    def search_week(params)
      return if params.blank?

      meal_time_week(Date.parse(params[:meal_time]))
    end

    def search_month(params)
      return if params.blank?

      meal_time_month(Date.parse(params[:meal_time]))
    end

    def search_meal_time(day)
      if params[:date].present?
        time = params[:date][:meal_time]
        meal_record = self.meal_time_date(time)
      end

      if params[:week].present?
        meal_record = self.meal_time_week(params[:week][:meal_time])
      end

      if params[:month].present?
        meal_record = self.meal_time_month(params[:month][:meal_time])
      end
    end

  end

end
