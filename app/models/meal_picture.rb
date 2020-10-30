# == Schema Information
#
# Table name: meal_pictures
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MealPicture < ApplicationRecord
  has_one_attached :search_picture

  def fetch_food_labels
    # 認証して、クライアントを初期化
    # ENV["GOOGLE_APPLICATION_CREDENTIALS"] = Rails.root.join('gcp_key.json').to_s
    # 本番用のパスを設定して、ローカルでは環境変数を読み込むようにしてる(後の修正が必要)
    Google::Cloud::Vision.configure { |vision| vision.credentials = Rails.root.join('../../shared/gcp_key.json').to_s }
    # 認証情報を読み込む
    # Google::Cloud::Vision.configure { |vision| vision.credentials = Rails.root.join('gcp_key.json').to_s }

    # インスタンスを作成
    image_annotator = Google::Cloud::Vision.image_annotator

    # 画像ファイルをダウンロードして、「ラベル情報ください」とVision APIを叩くと、レスポンスが返ってくる
    response = search_picture.open do |file|
      image_annotator.label_detection(
        image: file,
        max_results: 10
      )
    end

    food_labels = response.responses.map do |res|
      res.label_annotations.map do |label|
        label.description
      end
    end

    return food_labels.flatten
  end
end
