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

    # クライアントを初期化
    image_annotator = Google::Cloud::Vision.image_annotator

    response = @meal_record.meal_picture.open do |file|

      image_annotator.label_detection(
          image: file,
          max_results: 10
      )
    end

    @json_string = []
    # @labels = []

    # ラベル検出をリクエストしてレスポンスを処理する
    response.responses.each do |res|
      res.label_annotations.each { |label| @json_string << label.description }
      # res.label_annotations.each do |label|
      #   puts label.description
      #   @labels << Food.search_by_label(label)
      # end
    end

    @food_lists = []
    @json_string.each do |json|
      @food_lists = Food.search_by_label(json)
    end
    # @food_lists = Food.where("name like a")

    # @json_string.each do |label|
    #   @labels << Food.search_by_label(label)
    # end
    # @food_lists = Food.search_by_label(@json_string)
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
