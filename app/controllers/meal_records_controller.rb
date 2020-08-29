class MealRecordsController < ApplicationController
  before_action :set_meal_record, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token
  # https://qiita.com/nishina555/items/4ffaf5cc57a384b66230

  include Rails.application.routes.url_helpers

  def show; end

  def index
    @search_params = MealRecord.search_params(params)
    @meal_records = current_user.meal_records.search_meal_records(params, @search_params).order(meal_time: :asc)
  end

  def new
    @meal_record = MealRecord.new(food_id: params[:food_id])
    # @meal_record.meal_record_pictures = params[:meal_picture_params]
    @meal_record.meal_record_pictures = ActiveStorage::Blob.find(session[:meal_picture_id]) if session[:meal_picture_id]
  end

  def create
    @meal_record = current_user.meal_records.build(meal_record_params)
    @meal_record.food_id = params[:food_id]

    # ActiveStorage::Blob.find(session[:meal_picture_id])
    #<ActiveRecord::RecordNotFound: Couldn't find ActiveStorage::Blob with 'id'=11>
    # @meal_record.meal_record_pictures = ActiveStorage::Blob.find(session[:meal_picture_id]) if session[:meal_picture_id]

    if @meal_record.save
      session[:meal_picture_id] = nil
      redirect_to @meal_record, success: t('defaults.message.created', item: MealRecord.model_name.human )
    else
      flash.now[:danger] = t('defaults.message.not_created', item: MealRecord.model_name.human )
      render :new
    end
  end

  def edit; end

  def update
    if @meal_record.update(meal_record_params)
      redirect_to meal_record_path(@meal_record), success: t('defaults.message.updated', item: MealRecord.model_name.human )
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: MealRecord.model_name.human )
      render :edit
    end
  end

  def destroy
    @meal_record.destroy!
    redirect_to meal_records_path, success: t('defaults.message.deleted', item: MealRecord.model_name.human )
  end

  private

  def set_meal_record
    @meal_record = MealRecord.find(params[:id])
  end

  def meal_record_params
    params.require(:meal_record).permit(:meal_time, meal_record_pictures: [])
  end
end
