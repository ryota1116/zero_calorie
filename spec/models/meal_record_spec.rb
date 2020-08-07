# == Schema Information
#
# Table name: meal_records
#
#  id         :bigint           not null, primary key
#  meal_time  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe MealRecord, type: :model do
  describe 'MealRecord' do
    it 'meal_timeが無ければ無効な状態であること' do
      
    end
  end
end
