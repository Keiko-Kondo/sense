class Comment < ApplicationRecord
  belongs_to :future_vision
  validates :content, presence: true
end
