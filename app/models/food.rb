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
  validates :name, presence: true
  validates :calorie, presence: true

  scope :search_by_label, -> (label) { where("labels like ?", "%#{label}%") }
end
