class FoodsController < ApplicationController
  def create
  end

  def index
  end

  def search_result
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

  private

  def meal_record_params
    params.require(:meal_record).permit(:meal_picture)
  end
end
