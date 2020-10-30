class FoodsController < ApplicationController
  skip_before_action :require_login, only: %i[search_form_result search_picture_result]

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
    # 検索ワードとしてviewに表示させる変数
    @search_word = params[:name]
    # 検索ワードを変換してDB検索
    food_lists = Food.fetch_food_lists(@search_word)
    @food_lists = Food.merge_food_lists(food_lists, params[:name]).page(params[:page]).per(10)
  end

  # vision apiの解析結果を元にFoodデータを返すアクション
  def search_picture_result
    # 画像が添付されていない場合
    return if params[:meal_picture].blank?

    @meal_picture = MealPicture.new(meal_picture_params)

    return unless @meal_picture.save

    # セッションにデータを入れる
    session[:meal_picture_id] = @meal_picture.search_picture.id

    food_labels = @meal_picture.fetch_food_labels

    food_lists.reject(&:blank?).flatten = food_labels.map do |food_label|
      Food.with_label(food_label)
    end

    # 空配列を削除し、多次元配列を一次元配列にする
    @food_lists = food_lists.reject(&:blank?).flatten
  end

  private

  def food_params
    params.require(:food).permit(:name, :calorie, :calorie_theory, { food_genre_id: [] })
  end

  def meal_picture_params
    params.require(:meal_picture).permit(:search_picture)
  end

  def set_empty_session_of_meal_picture_id
    session[:meal_picture_id] = nil
  end
end
