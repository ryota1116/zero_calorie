class FoodNewForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :food_genre_id, Integer
  attribute :name, String
  attribute :calorie, Integer
  attribute :calorie_theory, String

  # validates :name, presence: true, uniqueness: { case_sensitive: true }
  # validates :calorie, presence: true, numericality: { only_integer: true, equal_to: 0 }

  def select_food_genre(genre)
    food_genres << genre
  end

  def unselect_food_genre(genre)
    food_genres.destroy(genre)
  end

  # def select_food_genre?(genre)
  #   food_genres.where(food_genre_id: food_genre.id).exists?
  # end
end
