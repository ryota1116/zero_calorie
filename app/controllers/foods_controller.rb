class FoodsController < ApplicationController
  require "google/cloud/storage"

  before_action :set_empty_session_of_meal_picture_id, only: %i[search_form search_picture]

  def new
    @food = Food.new(name: params[:food_name])
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to new_food_meal_record_path(@food), success: t('defaults.message.created', item: Food.model_name.human )
    else
      flash.now[:danger] = t('defaults.message.not_created', item: Food.model_name.human )
      render :new
    end
  end

  def search_form
    @search_word = params[:name]
    @food_lists = Food.search_form(params[:name])
  end

  def search_picture
    @meal_picture = MealPicture.new(meal_picture_params)

    if @meal_picture.save
      # セッションにデータを入れる
      session[:meal_picture_id] = @meal_picture.id

      # 一時的にコメントアウト
      # food_labels = @meal_picture.fetch_food_labels

      # 追加
      ENV["GOOGLE_APPLICATION_CREDENTIALS"] = Rails.root.join('gcp_key.json').to_s
      # ENV["GOOGLE_APPLICATION_CREDENTIALS"] = JSON.parse(Rails.application.credentials.dig(:gcs, :cloud).to_json)
      # ENV["GOOGLE_APPLICATION_CREDENTIALS"] = Rails.application.credentials.dig(:gcs, :cloud).to_s
      # ENV["GOOGLE_APPLICATION_CREDENTIALS"] = Rails.application.credentials.dig(:gcs, :cloud)

      image_annotator = Google::Cloud::Vision.image_annotator

      response = @meal_picture.search_picture.open do |file|
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
      # まで

      @food_lists = []

      # TODO:メソッドにする
      food_labels.each do |food_label|
        @food_lists = Food.search_by_label(food_label)
      end
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :calorie, :calorie_theory, { food_genre_id: [] } )
    # params.require(:food).permit(:name, :calorie, :calorie_theory, :food_genre_id)
  end

  # def food_genre_params
  #   params.require(:food_genre).permit(:food_genre_id)
  # end

  def meal_picture_params
    params.require(:meal_picture).permit(:search_picture)
  end

  def set_empty_session_of_meal_picture_id
    session[:meal_picture_id] = nil
  end
end
