class Power < ApplicationRecord
  validates :genre, presence: true, length: { maximum: 20 }
  validates :power, presence: true, length: { maximum: 100 }
  validates :address, length: { maximum: 20 }

  has_many :idea_powers, dependent: :destroy
  has_many :through_ideas, through: :idea_powers, source: :ideas
end
