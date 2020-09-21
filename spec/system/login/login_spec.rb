require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'UserSystem' do
    describe '通常画面' do
      let(:user) { create(:user) }

      describe 'ログイン' do
        context '認証情報が正しい場合' do
          it 'ログインできること' do
            visit login_path
            fill_in 'メールアドレス', with: user.email
            fill_in 'パスワード', with: 'password'
            click_button 'ログイン'
            expect(page).to have_current_path root_path, ignore_query: true
            expect(page).to have_content('ログインしました'), 'フラッシュメッセージ「ログインしました」が表示されていません'
          end
        end

        context 'パスワードに誤りがある場合' do
          it 'ログインできないこと' do
            visit login_path
            fill_in 'メールアドレス', with: user.email
            fill_in 'パスワード', with: '12345678'
            click_button 'ログイン'
            expect(page).to have_current_path login_path, ignore_query: true
            expect(page).to have_content('ログインに失敗しました'), 'フラッシュメッセージ「ログインに失敗しました」が表示されていません'
          end
        end
      end

      describe 'ログアウト' do
        before do
          login_as(user)
        end

        it 'ログアウトできること' do
          click_on('ログアウト')
          expect(page).to have_current_path root_path, ignore_query: true
          expect(page).to have_content('ログアウトしました'), 'フラッシュメッセージ「ログアウトしました」が表示されていません'
        end
      end
    end
  end
end
