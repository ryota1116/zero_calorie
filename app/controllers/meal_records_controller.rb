class MealRecordsController < ApplicationController
  before_action :set_meal_record, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def show; end

  def index
    # 検索ワードと、検索で取得したデータを変数に格納する
    @search_params, meal_records = get_meal_records_index(params, params[:date])
    @meal_records = meal_records.order(meal_time: :desc).page(params[:page]).per(10)
  end

  def new
    @meal_record = MealRecord.new(food_id: params[:food_id]) do |meal_record|
      meal_record.meal_record_pictures = ActiveStorage::Blob.find(session[:meal_picture_id]) if session[:meal_picture_id]
    end
  end

  def create
    @meal_record = current_user.meal_records.build(meal_record_params.merge(food_id: params[:food_id]))

    if @meal_record.save
      if session[:meal_picture_id].present?
        # MealPicture.find(session[:meal_picture_id]).search_pictureは間違い
        ActiveStorage::Blob.find(session[:meal_picture_id]).open do |file|
          @meal_record.meal_record_pictures.attach(io: file, filename: "#{SecureRandom.hex(8)}.jpg")
        end
        session[:meal_picture_id] = nil
      end
      redirect_to @meal_record, success: t('defaults.message.created', item: MealRecord.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: MealRecord.model_name.human)
      render :new
    end
  end

  def edit; end

  def update
    if @meal_record.update(meal_record_params)
      redirect_to meal_record_path(@meal_record), success: t('defaults.message.updated', item: MealRecord.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: MealRecord.model_name.human)
      render :edit
    end
  end

  def destroy
    @meal_record.destroy!
    redirect_to meal_records_path, success: t('defaults.message.deleted', item: MealRecord.model_name.human)
  end

  private

  def set_meal_record
    @meal_record = current_user.meal_records.find(params[:id])
  end

  def meal_record_params
    params.require(:meal_record).permit(:meal_time, meal_record_pictures: [])
  end

  def get_meal_records_index(params, params_date)
    if params_date.present? # 検索したい日時が指定されている場合
      search_params = MealRecord.search_params(params)
      meal_records = current_user.meal_records.search_meal_records(params, search_params)
    else
      # search_params = Date.current.strftime('%Y/%m/%d')
      search_params = nil
      # 全部取得する
      meal_records = current_user.meal_records.all.includes(food: :food_genres)
    end
    [search_params, meal_records]
  end
end
