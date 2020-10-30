# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MealRecordDecorator do
  let(:ice_cream) { create(:meal_record) }
  let(:meal_record_with_food_genre) { create(:meal_record, :with_food_genre)}

  describe 'drawing_calorie_theory' do
    context 'Foodのカロリー理論がある場合' do
      # テストファイルにdecoratorを割り当てる
      before { ActiveDecorator::Decorator.instance.decorate ice_cream }

      it 'Foodのカロリー理論を表示' do
        expect(ice_cream.drawing_calorie_theory).to eq 'アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。'
      end
    end

    context 'Foodのカロリー理論が無い場合' do
      context 'FoodGenreのカロリー理論がある場合' do
        before { ActiveDecorator::Decorator.instance.decorate meal_record_with_food_genre }
        it '1つ目のFoodGenreのカロリー理論を表示' do
          expect(meal_record_with_food_genre.drawing_calorie_theory).to eq meal_record_with_food_genre.food.food_genres[0].calorie_theory
        end
      end

      context 'FoodGenreのカロリー理論も無い場合' do
        it '「カロリー理論が登録されていません」と表示' do
        end
      end
    end
  end
end
