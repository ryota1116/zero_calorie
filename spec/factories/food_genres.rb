# == Schema Information
#
# Table name: food_genres
#
#  id             :bigint           not null, primary key
#  calorie        :integer          not null
#  calorie_theory :text(65535)      not null
#  genre_name     :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :food_genre do
    genre_name { 'MyString' }
    calorie { 1 }
    calorie_theory { 'MyText' }
  end
end
