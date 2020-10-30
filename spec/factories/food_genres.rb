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
# Indexes
#
#  index_food_genres_on_genre_name  (genre_name) UNIQUE
#
FactoryBot.define do
  factory :food_genre do
    sequence(:genre_name) { |n| "genre_name-#{n}" }
    calorie { 0 }
    sequence(:calorie_theory) { |n| "calorie_theory-#{n}" }

    # trait :noodle do
    #   genre_name { "麺類" }
    #   calorie_theory { "麺の丁度良い茹で具合とは、丁度カロリーがゼロになるタイミングのこと。美味しく感じれば間違いなくカロリーゼロになっている。" }
    # end
  end
end
