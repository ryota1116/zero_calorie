require 'rails_helper'

RSpec.describe '共通系', type: :system do
  describe 'タイトル' do
    let!(:user) { create(:user) }

    describe '一般ユーザー' do
      context 'ログイン前画面' do
        describe 'トップページ' do
          it '正しいタイトルが表示されていること' do
            visit root_path
            expect(page).to have_title('Zerorie'), 'トップページのタイトルが「Zerorie」ではありません'
          end
        end

        describe 'ログインページ' do
          it '正しいタイトルが表示されていること' do
            visit login_path
            expect(page).to have_title('ログイン | Zerorie'), 'ログインページのタイトルが「ログイン | Zerorie」ではありません'
          end
        end

        describe 'ユーザー登録ページ' do
          it '正しいタイトルが表示されていること' do
            visit new_user_path
            expect(page).to have_title('ユーザー登録 | Zerorie'), 'ユーザー登録ページのタイトルが「ユーザー登録 | Zerorie」ではありません'
          end
        end
      end

      context 'ログイン後画面' do
        before do
          login_as(user)
        end

        describe '食事記録の登録ページ' do
          xit '正しいタイトルが表示されていること' do
            visit new_food_meal_record_path
            expect(page).to have_title('食事記録の登録 | Zerorie'), '食事記録の登録ページのタイトルが「食事記録の登録 | Zerorie」ではありません'
          end
        end

        describe '食事記録の一覧ページ' do
          it '正しいタイトルが表示されていること' do
            visit meal_records_path
            expect(page).to have_title('食事記録の一覧 | Zerorie'), '食事記録一覧ページのタイトルが「食事記録の一覧 | Zerorie」ではありません'
          end
        end

        describe '掲示板詳細ページ' do
          xit '正しいタイトルが表示されていること' do
            board = create(:board)
            visit board_path(board)
            expect(page).to have_title("#{board.title} | Zerorie"), '掲示板詳細ページのタイトルが「掲示板のタイトル | Zerorie」ではありません'
          end
        end
      end
    end
  end
end
