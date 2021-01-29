class Power < ApplicationRecord
  has_many :idea_powers, dependent: :destroy
  has_many :through_ideas, through: :idea_powers, source: :ideas
end
