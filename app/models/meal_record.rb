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
  # belongs_to :food, optional: true
  belongs_to :user
  belongs_to :food
  has_many :meal_record_meal_pictures, dependent: :destroy
  has_many :meal_pictures, through: :meal_record_meal_pictures

  validates :meal_time, presence: true

  # TODO: foodsコントローラのロジックをMealRecordモデルに移す
  # def fetch_food_labels
  #   # クライアントを初期化
  #   image_annotator = Google::Cloud::Vision.image_annotator

  #   response = meal_picture.open do |file|
  #     image_annotator.label_detection(
  #         image: file,
  #         max_results: 10
  #     )
  #   end

  #   food_labels = []

  #   # ラベル検出をリクエストしてレスポンスを処理する
  #   response.responses.each do |res|
  #     res.label_annotations.each { |label| food_labels << label.description }
  #   end

  #   @food_lists = []

  #   food_labels.each do |food_label|
  #     @food_lists = Food.search_by_label(food_label)
  #   end
  # end
end
