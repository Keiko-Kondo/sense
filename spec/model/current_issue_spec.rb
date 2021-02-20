require 'rails_helper'
RSpec.describe CurrentIssue, type: :model do

  # it "ジャンルとタイトルと内容があれば有効な状態であること" do
  #   movie = Movie.new(
  #     title: 'DIC',
  #     production_year: 2000,
  #     running_time: 120,
  #     rating: 'G')
  #   expect(movie).to be_valid
  #   end
  # # タイトルがなければ無効な状態であること
  it "タイトルがなければ無効な状態であること" do
  current_issue = CurrentIssue.new(title: nil)
  current_issue.valid?
  expect(current_issue.errors[:title]).to include("を入力してください")
end
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
#   # タイトルが101文字以上なら無効な状態であること
#   it "is invalid with title is 101 or more characters" do
#   movie = Movie.new(title: 'a' * 101)
#   movie.valid?
#   expect(movie.errors[:title]).to include("is too long (maximum is 100 characters)")
# end
end
