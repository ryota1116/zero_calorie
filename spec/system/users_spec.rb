require 'rails_helper'

RSpec.describe "Users", type: :system do
  describe "UserSystem" do

    describe "Facebookログイン" do
      before do
        # 初期化
        OmniAuth.config.mock_auth[:facebook] = nil
        # Moduleのfacebook_mockをセット
        Rails.application.env_config['omniauth.auth'] = facebook_mock
        visit root_path
        click_link '新規登録'
      end

      context "新しくサインアップした場合" do
        it 'ユーザー数が増えること' do
          expect(
            click_link 'Facebookでログイン'
          ).to change(User, :count).by(1)
          expect(page).to have_http_status(200)
        end
      end
      context "認証済のアカウントでログインした場合" do
        it 'ユーザー数が増えないこと' do
          click_link 'Facebookでログイン'
          click_link 'ログアウト'
          expect(
            click_link 'Facebookでログイン'
          ).to change(User, :count).by(1)
        end
      end
    end
  end
end
