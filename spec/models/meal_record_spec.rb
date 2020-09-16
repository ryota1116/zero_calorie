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
require 'rails_helper'

RSpec.describe MealRecord, type: :model do
  describe 'MealRecordモデル' do
    let(:meal_record) { create(:meal_record) }

    it 'meal_time、food_id、user_idがあれば有効であること' do
      expect(meal_record).to be_valid
    end

    it 'meal_timeが無ければ無効であること' do
      meal_record.meal_time = nil
      expect(meal_record).to be_invalid
    end

    it 'food_idが無ければ無効であること' do
      meal_record.food_id = nil
      expect(meal_record).to be_invalid
    end

    it 'user_idが無ければ無効であること' do
      meal_record.user_id = nil
      expect(meal_record).to be_invalid
    end

    # describe 'def search_params(params)' do
    #   context 'paramsのkeyにdateが含まれる時' do
    #   end

    #   context 'paramsのkeyにweekが含まれる時' do
    #   end

    #   context 'paramsのkeyにmonthが含まれる時' do
    #   end
    # end

    # describe 'def search_meal_records(params, search_params)' do
    #   context 'meal_timeのparamsが昨日の時' do
    #   end

    #   context 'meal_timeのparamsが先週1週間の時' do
    #   end

    #   context 'meal_timeのparamsが先月1ヶ月間の時' do
    #   end
    # end
  end
end
