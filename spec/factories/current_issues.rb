FactoryBot.define do
  factory :current_issue do
    # 下記の内容は実際に作成するカラム名に合わせて変更してください
    genre { '教育' }
    title { '小学生にオンライン教育を' }
    issue { '小学生にオンライン教育を整備したい' }
    taker { '小学生とその親御さん' }
    giver { 'エンジニア' }
    idea { 'エンジニアを教科書会社とで、、、' }
    address { '東京都千代田区' }
    user
  end
  # factory :second_task, class: Task do
  #   task_name { 'test_task2' }
  #   details { 'test_details2' }
  #   deadline { '2020-10-01' }
  #   priority { '中' }
  #   status { '完了' }
  #   user
  # end
end
