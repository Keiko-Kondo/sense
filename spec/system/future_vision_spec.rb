require 'rails_helper'
describe 'ビジョン登録機能', type: :system do
  describe '詳細表示機能' do
    context '任意のビジョン詳細画面に遷移した場合' do
      it '該当ビジョンの内容が表示される' do
        future_vision = FactoryBot.create(:future_vision)
        visit new_session_path
        fill_in 'Email', with: 'www@www.com'
        fill_in 'Password', with: '123456'
        click_on 'Log in'
        visit future_vision_path(future_vision.id)
        expect(page).to have_content '教育'
        expect(page).to have_content '小学生にオンライン教育を'
        expect(page).to have_content '小学生にオンライン教育を整備したい'
        expect(page).to have_content 'エンジニア'
        expect(page).to have_content 'エンジニアと。。。'
        expect(page).to have_content '東京都千代田区'
      end
    end
  end
end
