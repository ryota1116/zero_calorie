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
    let(:meal_record_yesterday) { create(:meal_record, :yesterday) }
    let(:meal_record_two_week_ago) { create(:meal_record, :two_week_ago) }
    let(:meal_record_one_month_ago) { create(:meal_record, :one_month_ago) }

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

    describe "クラスメソッド" do
      describe "meal_time_date(day)" do
        context "引数に昨日の日付を渡した場合" do
          it '昨日の食事記録を返すこと' do
            expect(described_class.meal_time_date(DateTime.current.ago(1.day))).to contain_exactly(meal_record_yesterday)
          end
        end
      end
      describe "meal_time_week(day)" do
        context "引数に2週間前の日付を渡した場合" do
          it '2週間前の月曜から金曜までの食事記録を返すこと' do
            expect(described_class.meal_time_date(Date.current.ago(2.weeks))).to contain_exactly(meal_record_two_week_ago)
          end
        end
      end
      describe "meal_time_month(day)" do
        context "引数に1ヶ月前の日付を渡した場合" do
          it '1ヶ月前の初日から最終日までの食事記録を返すこと' do
            expect(described_class.meal_time_date(DateTime.current.ago(1.month))).to contain_exactly(meal_record_one_month_ago)
          end
        end
      end

    #   describe 'def search_params(params)' do
    #     context 'paramsのkeyにdateが含まれる時' do
    #     end
  
    #     context 'paramsのkeyにweekが含まれる時' do
    #     end
  
    #     context 'paramsのkeyにmonthが含まれる時' do
    #     end
    #   end
  
    #   describe 'def search_meal_records(params, search_params)' do
    #     context 'meal_timeのparamsが昨日の時' do
    #     end
  
    #     context 'meal_timeのparamsが先週1週間の時' do
    #     end
  
    #     context 'meal_timeのparamsが先月1ヶ月間の時' do
    #     end
    #   end
    end
  end
end
