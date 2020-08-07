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
  pending "add some examples to (or delete) #{__FILE__}"
end
