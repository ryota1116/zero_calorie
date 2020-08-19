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
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe MealRecord, type: :model do
  describe 'MealRecordモデル' do
    let(:meal_record) { create(:meal_record) }

    it 'meal_timeが無ければ無効であること' do
      meal_record.meal_time = nil
      expect(meal_record).to be_invalid
    end
  end
end
