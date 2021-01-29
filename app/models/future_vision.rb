class FutureVision < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true

  belongs_to :user

  has_many :vision_ideas, dependent: :destroy
  has_many :through_ideas, through: :vision_ideas, source: :ideas
end
