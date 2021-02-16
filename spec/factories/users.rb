FactoryBot.define do
  factory :user do
      name {  '123' }
      email { 'www@www.com' }
      password { '123456' }
      password_confirmation { '123456' }
    end
  factory :second_user, class: User do
    name { '321' }
    email { '321@321.com' }
    password { '123456' }
    password_confirmation { '123456' }
    end
end
