class FoodsController < ApplicationController

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

      food_labels = @meal_picture.fetch_food_labels

      @food_lists = []

      # TODO: メソッドにする
      food_labels.each do |food_label|
        @food_lists = Food.search_by_label(food_label)
      end
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :calorie, :calorie_theory)
  end

  def meal_picture_params
    params.require(:meal_picture).permit(:search_picture)
  end
end
