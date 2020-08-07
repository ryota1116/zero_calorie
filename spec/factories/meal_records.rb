# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :meal_record do
    meal_time { "2020-08-02 16:59:24" }
  end
end
