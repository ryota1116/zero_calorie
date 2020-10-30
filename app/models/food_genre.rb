# == Schema Information
#
# Table name: food_genres
#
#  id             :bigint           not null, primary key
#  calorie        :integer          not null
#  calorie_theory :text(65535)      not null
#  genre_name     :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_food_genres_on_genre_name  (genre_name) UNIQUE
#
class FoodGenre < ApplicationRecord
  has_many :food_food_genres, dependent: :destroy
  has_many :foods, through: :food_food_genres

  validates :genre_name, presence: true, uniqueness: { case_sensitive: true }
  validates :calorie, presence: true, numericality: { only_integer: true, equal_to: 0 }
  validates :calorie_theory, presence: true
end
