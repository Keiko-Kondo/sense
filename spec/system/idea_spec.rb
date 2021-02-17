require 'rails_helper'
describe 'せんすの要登録機能', type: :system do

    describe '新規作成機能' do
      context 'せんすの要を新規作成した場合' do
        it '作成したせんすの要が表示される' do
          idea = FactoryBot.create(:idea)
          # user = FactoryBot.create(:user)
          visit new_session_path
          fill_in 'Email', with: 'www@www.com'
          fill_in 'Password', with: '123456'
          click_on 'Log in'
          visit ideas_path
          expect(page).to have_content '地域マルシェ'
          expect(page).to have_content '地域の飲食店のテイクアウトマルシェを開催する'
          expect(page).to have_content '地域の飲食店'
        end
      end
    end
end
