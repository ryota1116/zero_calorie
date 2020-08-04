# == Schema Information
#
# Table name: foods
#
#  id             :bigint           not null, primary key
#  calorie        :integer          not null
#  calorie_theory :text(65535)
#  keywords       :json
#  name           :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :food do
    name { "MyString" }
    keywords { "" }
    calorie { 1 }
    calorie_theory { "MyText" }
  end
end
