# == Schema Information
#
# Table name: foods
#
#  id             :bigint           not null, primary key
#  calorie        :integer          not null
#  calorie_theory :text(65535)
#  labels         :json
#  name           :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Food < ApplicationRecord
  has_many :meal_records

  validates :name, presence: { case_sensitive: true }, uniqueness: { case_sensitive: true }
  validates :calorie, presence: { case_sensitive: true }, numericality: { only_integer: { case_sensitive: true }, equal_to: 0 }

  scope :search_by_form, -> (food_name) { where("name like ?", "%#{food_name}%")}
  scope :search_by_label, -> (label) { where("labels like ?", "%#{label}%") }

  def self.search_form(food_name)
    return Food.all unless food_name
    Food.search_by_form(food_name)
  end
end
