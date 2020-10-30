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
FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "name-#{n}" }
    calorie { 0 }
    sequence(:calorie_theory) { |n| "calorie_theory-#{n}" }
    labels { '' }

    trait :ice_cream do
      name { 'アイスクリーム' }
      calorie { 0 }
      calorie_theory { 'アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。' }
      labels { ['Food', 'Ice cream', 'Frozen dessert', 'Dish', 'Dondurma', 'Cuisine', 'Vanilla ice cream', 'Ingredient', 'Sorbet', 'Gelato', 'Dessert', 'Frozen yogurt', 'Cream', 'Vanilla', 'Dairy'] }
    end

    trait :rice do
      name { '白ごはん' }
      calorie { 0 }
      calorie_theory { '白い食べ物はカロリーが白紙に戻るからカロリーゼロ。' }
      labels { [''] }
    end

    trait :ice_coffee do
      name { 'アイスコーヒー' }
      calorie { 0 }
      calorie_theory { 'コーヒーを抽出している時、実はゼロカロリーの成分だけが抽出されている。' }
      labels { [''] }
    end

    trait :somen do
      name { '素麺(そうめん)' }
      calorie { 0 }
      labels { [''] }
    end

    trait :menchi_katsu do
      name { 'メンチカツ' }
      calorie { 0 }
      labels { [''] }
    end

    trait :menchi_katsu do
      name { 'メンチカツ' }
      calorie { 0 }
      labels { [''] }
    end

    # 多対多
    trait :with_food_genre do
      transient do
        sequence(:genre_name) { |n| "genre_name-#{n}" }
        sequence(:calorie_theory) { |n| "calorie_theory-#{n}" }
        # calorie { 0 }
      end

      # 中間テーブルを作成する定義を内部で統合
      after(:build) do |food, evaluator|
        food.food_genres << build(:food_genre, genre_name: evaluator.genre_name, calorie_theory: evaluator.calorie_theory)
      end
    end
  end
end
