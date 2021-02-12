class Idea < ApplicationRecord
  validates :title, presence: true, length: { maximum: 25 }
  validates :idea, presence: true, length: { maximum: 200 }
  validates :idea, length: { maximum: 200 }

  belongs_to :user
  has_many :issue_ideas, dependent: :destroy
  has_many :through_issues, through: :issue_ideas, source: :current_issue

  has_many :vision_ideas, dependent: :destroy
  has_many :through_visions, through: :vision_ideas, source: :future_vision

  has_many :idea_powers, dependent: :destroy
  has_many :through_powers, through: :idea_powers, source: :power


#   has_many :issue_ideas, dependent: :destroy
# has_many :current_issues, :through => :issue_ideas
# accepts_nested_attributes_for :issue_ideas, allow_destroy: true

end
