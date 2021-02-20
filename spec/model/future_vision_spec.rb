require 'rails_helper'
RSpec.describe FutureVision, type: :model do

  it "タイトルが26文字以上なら無効な状態であること" do
    future_vision = FutureVision.new(vision: 'a'*201)
    # future_vision.valid?
    expect(future_vision).to be_invalid
  end
end
