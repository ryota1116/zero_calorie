class MealRecordsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def show
    @meal_record = MealRecord.find(params[:id])
  end

  def index
    
    # binding.pry
    
    

    @meal_records = search_params

    # @week_params = week_params
    # if @week_params.present?
    #   MealRecord.search(@week_params)
    # end
  end

  def new
    @meal_record = MealRecord.new(food_id: params[:food_id])
  end

  def create
    @meal_record = current_user.meal_records.build(meal_record_params)
    @meal_record.food_id = params[:food_id]

    if session[:meal_picture_id]
      @meal_record.meal_record_picture = ActiveStorage::Blob.find(session[:meal_picture_id])
    end

    if @meal_record.save
      session[:meal_picture_id] = nil
      redirect_to @meal_record
    else
      render :new
    end
  end

  private

  def meal_record_params
    params.require(:meal_record).permit(:meal_time)
  end

  def search_params
    if date_params.present?
      meal_records = current_user.meal_records.search_date(date_params)
    elsif week_params.present?
      meal_records = current_user.meal_records.search_week(week_params)
    elsif month_params.present?
      meal_records = current_user.meal_records.search_month(month_params)
    else
      meal_records = current_user.meal_records
    end
  end

  def date_params
    params.fetch(:date, {}).permit(:meal_time)
  end

  def week_params
    params.fetch(:week, {}).permit(:meal_time)
  end

  def month_params
    params.fetch(:month, {}).permit(:meal_time)
  end
end
