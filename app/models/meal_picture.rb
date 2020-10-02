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

  def fetch_food_labels
    # 認証して、クライアントを初期化
    # ENV["GOOGLE_APPLICATION_CREDENTIALS"] = Rails.root.join('gcp_key.json').to_s
    # 本番用のパスを設定して、ローカルでは環境変数を読み込むようにしてる(後の修正が必要)
    Google::Cloud::Vision.configure { |vision| vision.credentials = Rails.root.join('../../shared/gcp_key.json').to_s }
    # Google::Cloud::Vision.configure { |vision| vision.credentials = Rails.root.join('gcp_key.json').to_s }
    image_annotator = Google::Cloud::Vision.image_annotator

    response = search_picture.open do |file|
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

    food_labels
  end
end
