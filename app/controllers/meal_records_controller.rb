class MealRecordsController < ApplicationController
  before_action :set_meal_record, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def show; end

  def show; end

  def index
    # TODO: Fatコントローラ解消
    @meal_records = search_params
    # @search_time = search_time
  end

  def new
    @meal_record = MealRecord.new(food_id: params[:food_id])
  end

  def create
    @meal_record = current_user.meal_records.build(meal_record_params)
    @meal_record.food_id = params[:food_id]

    @meal_record.meal_record_picture = ActiveStorage::Blob.find(session[:meal_picture_id]) if session[:meal_picture_id]

    if @meal_record.save
      session[:meal_picture_id] = nil
      redirect_to @meal_record
    else
      render :new
    end
  end

  def edit; end

  def update
    if @meal_record.update(meal_record_params)
      redirect_to meal_record_path(@meal_record)
    else
      render :edit
    end
  end

  def destroy
    @meal_record.destroy!
    redirect_to meal_records_path
  end

  private

  def set_meal_record
    @meal_record = MealRecord.find(params[:id])
  end

  def meal_record_params
    params.require(:meal_record).permit(:meal_time)
  end

  def search_params
    meal_records = if date_params[:meal_time].present?
                     current_user.meal_records.search_date(date_params)
                   elsif week_params[:meal_time].present?
                     current_user.meal_records.search_week(week_params)
                   elsif month_params[:meal_time].present?
                     current_user.meal_records.search_month(month_params)
                   else
                     current_user.meal_records
                   end
  end

  # def search_time
  #   if date_params.present?
  #     meal_records = Date.parse(date_params[:meal_time]).strftime("%Y年%m月%d日")
  #   elsif week_params.present?
  #     meal_records = Date.parse(week_params[:meal_time]).beginning_of_week.strftime("%Y年%m月%d日")
  #     meal_records = Date.parse(week_params[:meal_time]).end_of_week.strftime("%Y年%m月%d日")
  #   elsif month_params.present?
  #     meal_records = month_params[:meal_time]
  #   else
  #     meal_records = ''
  #   end
  # end

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
