require 'rails_helper'
RSpec.describe Power, type: :model do

  # it "ジャンルとタイトルと内容があれば有効な状態であること" do
  #   movie = Movie.new(
  #     title: 'DIC',
  #     production_year: 2000,
  #     running_time: 120,
  #     rating: 'G')
  #   expect(movie).to be_valid
  #   end
  # # タイトルがなければ無効な状態であること

  # 重複したタイトルなら無効な状態であること
#   it "is invalid with a duplicate title" do
#   Movie.create(
#     title: 'DIC',
#     production_year: 2000,
#     running_time: 120,
#     rating: 'G')
#   movie = Movie.new(
#     title: 'DIC',
#     production_year: 3000,
#     running_time: 150,
#     rating: 'PG12')
#   movie.valid?
#   expect(movie.errors[:title]).to include("has already been taken")
# end
  # ちからが101文字以上なら無効な状態であること
  it "is invalid with power is 101 or more characters" do
  power = Power.new(power: 'a' * 101)
  expect(power).to be_invalid
end
end
