require 'rails_helper'
describe 'ユーザー機能', type: :system do

   context 'ユーザーがログインせずタスク一覧画面にアクセスした場合' do
     it 'ログイン画面に遷移する' do
       FactoryBot.create(:user)
       visit current_issues_path
       expect(page).to have_content 'Log in'
    end
  end
end

  describe 'セッション機能', type: :system do
      context 'ログインした場合' do
        it 'ログインされた状態になる' do
          FactoryBot.create(:user)
          visit new_session_path
          fill_in 'Email', with: 'www@www.com'
          fill_in 'Password', with: '123456'
          click_on 'Log in'
          expect(page).to have_content 'Logout'
       end
     end

     context 'ログアウトボタンを押した場合' do
       it 'ログアウトされる' do
         user = FactoryBot.create(:user)
         visit new_session_path
         fill_in 'Email', with: 'www@www.com'
         fill_in 'Password', with: '123456'
         click_on 'Log in'
         click_on 'Logout'
         expect(page).to have_content 'ログアウトしました'

      end
   end

end
