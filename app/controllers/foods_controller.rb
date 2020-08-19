class FoodsController < ApplicationController
  def create
  end

  def index
  end

  def search_form
    @food_lists = Food.search_form(params[:name])
  end

  def search_picture
    # リクエストの処理を書く

    @meal_picture = MealPicture.new(meal_picture_params)
    if @meal_picture.save

      # セッションにデータを入れる
      session[:meal_picture_id] = @meal_picture.id

      # クライアントを初期化
      image_annotator = Google::Cloud::Vision.image_annotator

      # TODO: 画像を２枚以上渡された場合などの例外処理はどうする
      response = @meal_picture.search_picture.open do |file|
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

      @food_lists = []

      # TODO: メソッドにする
      # 画像でFoodテーブルを検索
      food_labels.each do |food_label|
        @food_lists = Food.search_by_label(food_label)
      end

    end
  end

  private

  def meal_picture_params
    params.require(:meal_picture).permit(:search_picture)
  end
end
