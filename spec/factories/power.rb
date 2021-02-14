FactoryBot.define do
  factory :power do
    # 下記の内容は実際に作成するカラム名に合わせて変更してください
    genre { '教育' }
    power { '教科書の版権' }
    address { '東京都千代田区' }
    user
  end
end
