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
require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Foodモデル' do
    it 'calorie、nameがあれば有効な状態であること' do
      
    end
    it 'calorieが無ければ無効な状態であること' do
      
    end
    it 'calorieの値が0以外の場合、無効な状態であること' do
      
    end
    it 'nameが無ければ無効な状態であること' do
      
    end
    it '重複したnameであれば無効な状態であること' do
      
    end

  end
end
