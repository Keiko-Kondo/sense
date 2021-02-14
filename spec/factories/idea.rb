FactoryBot.define do
  factory :idea do
    # 下記の内容は実際に作成するカラム名に合わせて変更してください
    title { '地域マルシェ' }
    idea { '地域の飲食店のテイクアウトマルシェを開催する' }
    expected_power { '地域の飲食店' }
    user
  end
end
