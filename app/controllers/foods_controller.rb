class FoodsController < ApplicationController
  # require "google/cloud/vision"

  before_action :set_empty_session_of_meal_picture_id, only: %i[search_form_result search_picture_result]

  def new
    @food = Food.new(name: params[:food_name])
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to new_food_meal_record_path(@food), success: t('defaults.message.created', item: Food.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: Food.model_name.human)
      render :new
    end
  end

  def search_form_result
    # 検索ワードとしてviewに表示
    @search_word = params[:name]
    # 検索データ

    # @search_word.match?(/\A[ぁ-んー－]+\z/)
    case @search_word  #検索ワードが
    when /\A[ぁ-んー－]+\z/ #平仮名のみの場合
      food_lists = Food.search_form(@search_word.to_kana) # カタカナに変換して検索
    when /\A[ァ-ヶー－]+\z/ #カタカナのみの場合
      food_lists = Food.search_form(@search_word.to_hira) # 平仮名に変換して検索
    when /[一-龠々]/ # 漢字が含まれる場合
      food_lists = Food.search_form(@search_word.to_kanhira) # 平仮名に変換して検索
    end

    # ユーザが入力した元データで検索をかけて、ActiveRecord_Relationをorメソッドで結合させる
    @food_lists = food_lists.or(Food.search_form(params[:name])).page(params[:page]).per(10)
  end

  # vision apiのレスポンスを返す
  def search_picture_result
    @meal_picture = MealPicture.new(meal_picture_params)

    return unless @meal_picture.save

    # セッションにデータを入れる
    session[:meal_picture_id] = @meal_picture.search_picture.id

    food_labels = @meal_picture.fetch_food_labels
    @food_lists = []

    # labelでFoodを検索
    # TODO: メソッドにしたい
    food_labels.each do |food_label|
      @food_lists = Food.search_by_label(food_label)
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :calorie, :calorie_theory, { food_genre_id: [] })
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
