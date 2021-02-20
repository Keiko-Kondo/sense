require 'rails_helper'
RSpec.describe User, type: :model do

  # it "ジャンルとタイトルと内容があれば有効な状態であること" do
  #   movie = Movie.new(
  #     title: 'DIC',
  #     production_year: 2000,
  #     running_time: 120,
  #     rating: 'G')
  #   expect(movie).to be_valid
  #   end
  # # タイトルがなければ無効な状態であること

  it "重複したemailなら無効な状態であること" do
  User.create(
    name: 'user1',
    classification: '個人',
    email: 'user@user.com',
    address: '板橋区',
    # password_digest: '123456')
    password: '123456')
  user = User.new(
    name: 'user2',
    classification: '個人',
    email: 'user@user.com',
    address: '練馬区',
    # password_digest: '123456')
    password: '123456')
    expect(user).to be_valid
end
#   # タイトルが101文字以上なら無効な状態であること
#   it "is invalid with title is 101 or more characters" do
#   movie = Movie.new(title: 'a' * 101)
#   movie.valid?
#   expect(movie.errors[:title]).to include("is too long (maximum is 100 characters)")
# end
end
