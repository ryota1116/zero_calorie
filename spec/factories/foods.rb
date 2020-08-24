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
FactoryBot.define do
  factory :food do
    sequence(:name) { |n| "name-#{n}" }
    calorie { 0 }
    sequence(:calorie_theory) { |n| "calorie_theory-#{n}" }
    labels { '' }

    trait :icecream do
      name { 'アイスクリーム' }
      calorie { 0 }
      calorie_theory { 'アイスクリームはカロリーゼロ。冷たくすることでカロリーが全部飛ぶ。むしろ0度を下回っているから、食べれば食べるほどカロリーが消費される。' }
      labels { ['Food', 'Ice cream', 'Frozen dessert', 'Dish', 'Dondurma', 'Cuisine', 'Vanilla ice cream', 'Ingredient', 'Sorbet', 'Gelato', 'Dessert', 'Frozen yogurt', 'Cream', 'Vanilla', 'Dairy'] }
    end
  end
end
