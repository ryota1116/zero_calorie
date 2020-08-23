class FoodsController < ApplicationController
  def create; end

  def search_form
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

  def meal_picture_params
    params.require(:meal_picture).permit(:search_picture)
  end
end
