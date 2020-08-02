class MealRecordsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def new
    @meal_record = MealRecord.new
  end

  def create
    # リクエストの処理を書く

    @meal_record = MealRecord.new(meal_record_params)

    @meal_record.save
    
    binding.pry

    # image_path = "/Users/funesakisuke/workspace/app/zero_calorie/app/assets/images/gyouza0347.jpeg"
    # クライアントを初期化することにより、特定のバージョンの Vision API を使用できる
    image_annotator = Google::Cloud::Vision.image_annotator

    response = image_annotator.label_detection(
      image: @meal_record.meal_picture.original_filename,
      # image: image_path,
      max_results: 15 # optional, defaults to 10
    )

    @json_string = []

    # ラベル検出をリクエストしてレスポンスを処理する
    response.responses.each do |res|
      res.label_annotations.each { |label| @json_string << label.description }
      # res.label_annotations.each do |label|
        puts @json_string
      # end
    end

    redirect_to meal_records_path
  end

  def show
  end

  def index
    @meal_record = MealRecord.all
  end

  private

  def meal_record_params
    params.require(:meal_record).permit(:meal_picture)
  end
end
