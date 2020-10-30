# == Schema Information
#
# Table name: foods
#
#  id             :bigint           not null, primary key
#  calorie        :integer          default(0), not null
#  calorie_theory :text(65535)
#  labels         :json
#  name           :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_foods_on_name  (name) UNIQUE
#
class Food < ApplicationRecord
  has_many :meal_records, dependent: :destroy
  has_many :food_food_genres, dependent: :destroy
  has_many :food_genres, through: :food_food_genres

  validates :name, presence: true, uniqueness: { case_sensitive: true }
  # TODO: 0に固定してるから、presence: trueは削除した
  validates :calorie, numericality: { only_integer: true, equal_to: 0 }
  validates :calorie_theory, length: { maximum: 100 }

  scope :with_name, ->(food_name) { where('name like ?', "%#{food_name}%") }
  scope :with_label, ->(label) { where('labels like ?', "%#{label}%") }

  # 文字列でFoodテーブルを検索
  def self.search_form(food_name)
    # return Food.all unless food_name
    return nil unless food_name

    Food.with_name(food_name)
  end

  # 検索ワードを変換してFoodの検索を行う
  def self.fetch_food_lists(search_word)
    case search_word # 検索ワードが
    when /\A[ぁ-んー－]+\z/ # 平仮名のみの場合
      food_lists = Food.search_form(search_word.to_kana) # カタカナに変換して検索
    when /\A[ァ-ヶー－]+\z/ # カタカナのみの場合
      food_lists = Food.search_form(search_word.to_hira) # 平仮名に変換して検索
    when /[一-龠々]/ # 漢字が含まれる場合
      food_lists = Food.search_form(search_word.to_kanhira) # 平仮名に変換して検索
    end

    food_lists
  end

  # ユーザが入力した元の検索ワードで検索をかけて、
  # orメソッドでActiveRecord_Relationを結合
  def self.merge_food_lists(food_lists, search_word)
    if food_lists.present?
      food_lists.or(Food.search_form(search_word))
    else
      Food.search_form(search_word)
    end
  end

  # def select_food_genre(genre)
  #   food_genres << genre
  # end

  # def unselect_food_genre(genre)
  #   food_genres.destroy(genre)
  # end
end
