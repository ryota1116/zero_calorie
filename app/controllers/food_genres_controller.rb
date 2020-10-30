class FoodGenresController < ApplicationController
  before_action :set_my_food_genre, only: %i[edit update destroy]

  def index
    @food_genres = FoodGenre.all
  end

  def show
    # index, showはcurrent_userの必要はない。authorizeとか使う？
    @food_genre = FoodGenre.find(params[:id])
  end

  def new
    @food_genre = FoodGenre.new
  end

  def create
    @food_genre = current_user.food_genres.build(food_genre_params)

    if @food_genre.save
      redirect_to @food_genre, success: t('defaults.message.created', item: FoodGenre.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: FoodGenre.model_name.human)
      render :new
    end
  end

  # TODO: current_userの編集、削除ボタンの表示
  def edit; end

  def update
    if @food_genre.update(food_genre_params)
      redirect_to food_genre_path(@food_genre), success: t('defaults.message.updated', item: FoodGenre.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: FoodGenre.model_name.human)
      render :edit
    end
  end

  def destroy
    @food_genre.destroy!
    redirect_to food_genres_path, success: t('defaults.message.deleted', item: FoodGenre.model_name.human)
  end

  private

  def set_my_food_genre
    # TODO: メモ確認 / 自分のやつだけ取得
    @food_genre = current_user.food_genres.find(params[:id])
  end

  def food_genre_params
    params.require(:food_genre).permit(:genre_name, :calorie, :calorie_theory)
  end
end
