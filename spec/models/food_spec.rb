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
    let(:food) { create(:food) }

    it 'calorie、nameがあれば有効であること' do
      expect(food).to be_valid
    end

    it 'calorieが無ければ無効であること' do
      food.calorie = nil
      expect(food).to be_invalid
    end

    it 'calorieの値が0以外の場合、無効であること' do
      food.calorie = 100
      expect(food).to be_invalid
    end

    it 'calorieの値が0の場合、有効であること' do
      food.calorie = 0
      expect(food).to be_valid
    end

    it 'nameが無ければ無効であること' do
      food.name = nil
      expect(food).to be_invalid
    end

    it 'nameが重複している場合、無効であること' do
      other_food = build(:food, name: food.name)
      # food.calorie = nil
      expect(other_food).to be_invalid
    end

    it 'nameが重複しない場合、有効であること' do
      other_food = build(:food, name: food.name + 'と別のname')
      expect(other_food).to be_valid
    end

    describe "scope" do
      describe 'search_by_form' do
        let(:food_ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
        subject { Food.search_by_form('アイス') }
        it { is_expected.to include food_ice_cream }
      end

      describe "search_by_label" do
        let(:food_ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
        subject { Food.search_by_label('Ice cream') }
        it { is_expected.to include food_ice_cream }
      end
    end

  end
end
