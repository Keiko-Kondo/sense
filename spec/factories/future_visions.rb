FactoryBot.define do
  factory :future_vision do
    # 下記の内容は実際に作成するカラム名に合わせて変更してください
    genre { '教育' }
    title { '小学生にオンライン教育を' }
    vision { '小学生にオンライン教育を整備したい' }
    expected { 'エンジニア' }
    possible_method { 'エンジニアと。。。' }
    address { '東京都千代田区' }
    user
  end
end
