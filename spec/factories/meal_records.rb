# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  food_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_meal_records_on_food_id  (food_id)
#  index_meal_records_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (food_id => foods.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :meal_record do
    meal_time { DateTime.current }
    association :user, factory: :user
    association :food, factory: %i[food ice_cream]

    trait :yesterday do
      meal_time { DateTime.current.ago(1.day) }
    end

    trait :two_week_ago do
      meal_time { Date.current.ago(2.weeks) }
    end

    trait :one_month_ago do
      meal_time { Date.current.ago(1.month) }
    end

    trait :with_food_genre do
      association :food, factory: %i[food with_food_genre]
    end
  end
end
