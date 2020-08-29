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
        let(:ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
        subject { Food.search_by_form('アイス') }
        it { is_expected.to include ice_cream }
      end

      describe "search_by_label" do
        let(:ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
        subject { Food.search_by_label('Ice cream') }
        it { is_expected.to include ice_cream }
      end
    end

    describe "クラスメソッド" do
      describe "def self.search_form(food_name)" do
        let!(:ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
        let!(:ice_coffee) { create(:food, :ice_coffee, name: 'アイスコーヒー ') }
        let!(:rice) { create(:food, :rice, name: '白ごはん') }
        context "空文字で検索した場合" do
          it "Foodテーブルの全データを返す" do
            # subject { Food.search_by_label('') }
            # it { is_expected.to include [ice_cream, rice] }
            expect(Food.search_form('')).to contain_exactly(ice_cream, ice_coffee, rice)
          end
        end
        context "アイスと検索した場合" do
          it "アイスという文字列を含むFoodのデータを返す" do
            expect(Food.search_form('アイス')).to contain_exactly(ice_cream, ice_coffee)
            expect(Food.search_form('アイス')).not_to include rice
          end
        end
      end
    end

  end
end
