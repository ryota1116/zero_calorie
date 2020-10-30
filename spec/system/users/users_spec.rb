require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'UserSystem' do
    it 'ユーザーが新規作成できること' do
      visit new_user_path
      fill_in '名前', with: 'テストユーザー'
      fill_in 'メールアドレス', with: 'example@example.com'
      fill_in 'パスワード', with: '12345678'
      fill_in 'パスワード確認', with: '12345678'
      click_button '登録'
      expect(page).to have_current_path meal_records_path, ignore_query: true
      expect(page).to have_content('ユーザー登録が完了しました'), 'フラッシュメッセージ「ユーザー登録が完了しました」が表示されていません'
    end

    it 'ユーザーが新規作成できない' do
      visit new_user_path
      fill_in 'メールアドレス', with: 'example@example.com'
      click_button '登録'
      expect(page).to have_current_path '/users', ignore_query: true
      expect(page).to have_content '名前を入力してください'
      expect(page).to have_content('ユーザー登録に失敗しました'), 'フラッシュメッセージ「ユーザー登録に失敗しました」が表示されていません'
    end

    describe 'Facebookログイン' do
      before do
        # 初期化
        OmniAuth.config.mock_auth[:facebook] = nil
        # Moduleのfacebook_mockをセット
        Rails.application.env_config['omniauth.auth'] = facebook_mock
        visit root_path
        click_link '新規登録'
      end

      context '新しくサインアップした時' do
        xit 'ユーザー数が増えること' do
          expect(
            click_link('Facebookでログイン')
          ).to change(User, :count).by(1)
          # expect(page).to have_http_status(:ok)
        end
      end

      context '認証済のアカウントでログインした時' do
        xit 'ユーザー数が増えないこと' do
          click_link 'Facebookでログイン'
          click_link 'ログアウト'
          expect(
            click_link('Facebookでログイン')
          ).to change(User, :count).by(1)
        end
      end
    end
  end
end
