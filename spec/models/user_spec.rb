# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  crypted_password :string(255)
#  email            :string(255)      not null
#  name             :string(255)
#  role             :integer          default(0)
#  salt             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Userモデル' do
    let(:user) { create(:user) }

    it 'name, email, password, password_confirmationがあれば有効であること' do
      expect(user).to be_valid
    end

    it 'nameが無ければ無効であること' do
      user.name = nil
      expect(user).to be_invalid
    end

    it 'emailが無ければ無効であること' do
      user.email = nil
      expect(user).to be_invalid
    end

    it 'emailが重複している場合、無効であること' do
      other_user = build(:user, email: user.email)
      expect(other_user).to be_invalid
    end

    it 'emailが重複していない場合、有効であること' do
      other_user = build(:user, email: 'other@example.com')
      expect(other_user).to be_valid
    end

    it 'passwordが無ければ無効であること' do
      user = build(:user, password: nil)
      expect(user).to be_invalid
    end

    it 'password_confirmationが無ければ無効であること' do
      user = build(:user, password_confirmation: nil)
      expect(user).to be_invalid
    end
  end
end
