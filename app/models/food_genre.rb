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
#  user_id        :bigint           not null
#
# Indexes
#
#  index_food_genres_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class FoodGenre < ApplicationRecord
  has_many :food_food_genres, dependent: :destroy
  has_many :foods, through: :food_food_genres
  belongs_to :user
end
