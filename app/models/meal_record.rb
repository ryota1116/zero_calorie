# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :bigint           not null
#
# Indexes
#
#  index_meal_records_on_food_id  (food_id)
#
# Foreign Keys
#
#  fk_rails_...  (food_id => foods.id)
#
class MealRecord < ApplicationRecord
  has_one_attached :meal_picture
  validates :meal_time, presence: { case_sensitive: true }

  def fetch_food_labels
    # クライアントを初期化
    image_annotator = Google::Cloud::Vision.image_annotator

    response = meal_picture.open do |file|
      image_annotator.label_detection(
          image: file,
          max_results: 10
      )
    end

    food_labels = []

    # ラベル検出をリクエストしてレスポンスを処理する
    response.responses.each do |res|
      res.label_annotations.each { |label| food_labels << label.description }
    end

    @food_lists = []

    food_labels.each do |food_label|
      @food_lists = Food.search_by_label(food_label)
    end
  end
end
