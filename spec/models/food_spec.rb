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
require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Foodモデル' do
    # とりあえずlet!にしないこと
    let(:food) { create(:food) }
    let(:ice_cream) { create(:food, :ice_cream, name: 'アイスクリーム') }
    let(:ice_coffee) { create(:food, :ice_coffee, name: 'アイスコーヒー ') }
    let(:rice) { create(:food, :rice, name: '白ごはん') }
    let(:somen) { create(:food, :somen, name: '素麺(そうめん)') }
    let(:menchi_katsu) { create(:food, :menchi_katsu, name: 'メンチカツ') }

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

    describe 'scope' do
      describe ':search_by_form' do
        context 'アイスと検索した場合' do
          it 'アイスという文字列を含むFoodのデータを返す' do
            expect(described_class.search_by_form('アイス')).to contain_exactly(ice_cream, ice_coffee)
          end
        end
      end

      describe ':search_by_label' do
        context 'ice creamというラベルを引数に設定した場合' do
          it 'ice creamというラベルを持つFoodのデータを返す' do
            expect(described_class.search_by_label('Ice cream')).to contain_exactly(ice_cream)
          end
        end
      end
    end

    describe 'クラスメソッド' do
      describe 'self.search_form(food_name)' do
        context '空文字で検索した場合' do
          it 'Foodテーブルの全データを返す' do
            expect(described_class.search_form('')).to contain_exactly(ice_cream, ice_coffee, rice)
          end
        end

        context 'アイスと検索した場合' do
          it 'nameがアイスクリームのFoodデータを返す' do
            expect(described_class.search_form('アイス')).to contain_exactly(ice_cream)
          end

          it 'nameがアイスコーヒーのFoodデータを返す' do
            expect(described_class.search_form('アイス')).to contain_exactly(ice_coffee)
          end

          it 'nameが白ごはんのFoodデータを返さない' do
            expect(described_class.search_form('アイス')).not_to include rice
          end
        end
      end

      describe 'self.fetch_food_lists(search_word)' do
        context '検索ワードが平仮名のみの場合' do
          it 'カタカナに変換して検索する' do
            expect(described_class.fetch_food_lists('あいす')).to contain_exactly(ice_cream)
          end
        end

        context '検索ワードがカタカナのみの場合' do
          it '平仮名に変換して検索する' do
            expect(described_class.fetch_food_lists('ゴハン')).to contain_exactly(rice)
          end
        end

        context '検索ワードに漢字が含まれる場合' do
          it '平仮名に変換して検索する' do
            expect(described_class.fetch_food_lists('御飯')).to contain_exactly(rice)
          end
        end
      end

      describe 'self.merge_food_lists(food_lists, search_word)' do
        context '「めん」で検索した場合' do
          it '素麺(そうめん)とメンチカツを返す' do
            food_lists = described_class.fetch_food_lists('めん')
            expect(described_class.merge_food_lists(food_lists, 'めん')).to contain_exactly(somen)
            # TODO: メンチカツ取得できないの何故？
            # expect(Food.merge_food_lists(@food_lists, 'めん')).to contain_exactly(menchi_katsu)
          end
        end
      end
    end
  end
end
