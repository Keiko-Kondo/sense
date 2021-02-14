require 'rails_helper'
describe 'ちから登録機能', type: :system do
  describe '詳細表示機能' do
    context '任意のちから詳細画面に遷移した場合' do
      it '該当ちからの内容が表示される' do
        power = FactoryBot.create(:power)
        visit new_session_path
        fill_in 'Email', with: 'www@www.com'
        fill_in 'Password', with: '123456'
        click_on 'Log in'
        visit power_path(power.id)
        expect(page).to have_content '教育'
        expect(page).to have_content '教科書の版権'
        expect(page).to have_content '東京都千代田区'
      end
    end
  end
end
