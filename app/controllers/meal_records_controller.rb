class MealRecordsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def new
    # current_user
    # food
    @meal_record = MealRecord.new(food_id: params[:food_id])
  end

  def create
    @meal_record = current_user.meal_records.build(meal_record_params)
    @meal_record.food_id = params[:food_id]

    if @meal_record.save
      # redirect_to meal_record_path
      redirect_to @meal_record
    else
      render :new
    end
  end

  def show
    @meal_record = MealRecord.find(params[:id])
  end

  def index
    # @meal_record = MealRecord.all
  end

  private

  def meal_record_params
    params.require(:meal_record).permit(:meal_time)
  end
end
