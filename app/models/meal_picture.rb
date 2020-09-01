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
    # クライアントを初期化

    # image_annotator = Google::Cloud::Vision.image_annotator
    # GOOGLE_APPLICATION_CREDENTIALS = Rails.application.credentials.gcs[:cloud]

    # image_annotator = Google::Cloud::Vision.image_annotator.new(
    #   credentials: JSON.parse(ENV.fetch('GOOGLE_APPLICATION_CREDENTIALS'))
    # )

    # image_annotator = Google::Cloud::Vision.image_annotator.new(
    #   credentials: JSON.parse(File.open(Rails.root.join('gcp_key.json')))
    # )

    image_annotator = Google::Cloud::Vision.image_annotator.new(
      type: Rails.application.credentials.dig(:gcs, :cloud, :project_id),
      project_id: Rails.application.credentials.dig(:gcs, :cloud, :project_id),
      private_key_id: Rails.application.credentials.dig(:gcs, :cloud, :private_key_id),
      private_key: Rails.application.credentials.dig(:gcs, :cloud, :private_key),
      client_email: Rails.application.credentials.dig(:gcs, :cloud, :client_email),
      client_id: Rails.application.credentials.dig(:gcs, :cloud, :client_id),
      auth_uri: Rails.application.credentials.dig(:gcs, :cloud, :auth_uri),
      token_uri: Rails.application.credentials.dig(:gcs, :cloud, :token_uri),
      auth_provider_x509_cert_url: "https://www.googleapis.com/oauth2/v1/certs",
      client_x509_cert_url: "https://www.googleapis.com/robot/v1/metadata/x509/zero-calorie%40zero-calorie-app.iam.gserviceaccount.com"
    )


    response = search_picture.open do |file|
      image_annotator.label_detection(
        image: file,
        max_results: 10
      )
    end

    # @meal_picture.meal_pictures.each do |meal_picture|
    #   response = meal_picture.open do |file|
    #     image_annotator.label_detection(
    #         image: file,
    #         max_results: 10
    #     )
    #   end
    # end

    food_labels = []

    # ラベル検出をリクエストしてレスポンスを処理する
    response.responses.each do |res|
      res.label_annotations.each { |label| food_labels << label.description }
    end

    food_labels
  end
end
