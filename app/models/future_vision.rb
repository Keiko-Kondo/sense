class FutureVision < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true, length: { maximum: 25 }
  validates :vision, presence: true, length: { maximum: 200 }
  validates :expected, length: { maximum: 30 }
  validates :possible_method, length: { maximum: 200 }
  validates :address, length: { maximum: 20 }


  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :vision_ideas, dependent: :destroy
  has_many :through_ideas, through: :vision_ideas, source: :idea
end
