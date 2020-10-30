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

  has_many_attached :meal_record_pictures

  validates :meal_time, presence: true

  class << self
    # 日、週、月でscopeするクラスメソッド
    def meal_time_date(day)
      where('? <= meal_time and meal_time <= ?',  day.beginning_of_day, day.end_of_day) if day.present?
    end

    def meal_time_week(day)
      where('? <= meal_time and meal_time <= ?',  day.beginning_of_week, day.end_of_week) if day.present?
    end

    def meal_time_month(day)
      where('? <= meal_time and meal_time <= ?',  day.beginning_of_month, day.end_of_month) if day.present?
    end

    # 検索フォームに入力されたパラメータを取得する
    # date,week,monthのフォームごとに、取得するパラメータを変更している
    def search_params(params)
      search_form_params = if params.keys.include?('date')
                             params[:date][:meal_time]
                           elsif params.keys.include?('week')
                             params[:week][:meal_time]
                           elsif params.keys.include?('month')
                             params[:month][:meal_time]
                           end

      search_form_params
    end

    # meal_recordの検索結果を返す
    # Metrics/PerceivedComplexity: Perceived complexity for search_meal_records is too high. [8/7]
    def search_meal_records(params, search_params)
      search_meal_record = if params.keys.include?('date') && params[:date][:meal_time].present?
                             meal_time_date(Date.parse(search_params))
                           # elsif params.keys.include?('week') && params[:week][:meal_time].present?
                           # meal_time_week(Date.parse(search_params))
                           elsif params.keys.include?('month') && params[:month][:meal_time].present?
                             meal_time_month(Date.parse(search_params))
                           else
                             includes(:food)
                           end

      search_meal_record
    end
  end
end
