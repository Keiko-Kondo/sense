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

RSpec.describe "GoogleMap", type: :system do
  describe "GoogleMap が表示されているページ" do
    context "GoogleMap の動作確認", js: true do
      it "ピンをクリックするとinfowindow が表示されること" do
        future_vision = FactoryBot.create(:future_vision)
        visit new_session_path
        fill_in 'Email', with: 'www@www.com'
        fill_in 'Password', with: '123456'
        click_on 'Log in'
        visit future_visions_path
        pin = find("map#gmimap0 area", visible: false)
        pin.click
        expect(page).to have_content '東京都千代田区'
      end
    end
  end
end

RSpec.describe "コメント機能", type: :system do
  describe "みらいビジョンの詳細画面" do
    context "コメント機能確認", js: true do
      it "コメントの登録ボタンを押すとコメントが表示されること" do
        future_vision = FactoryBot.create(:future_vision)
        visit future_vision_path(future_vision.id)
        fill_in 'Content', with: 'コメント内容だよ'
        click_on '登録する'
        expect(page).to have_content 'コメント内容だよ'
      end
    end
  end
end
