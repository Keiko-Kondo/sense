class CurrentIssue < ApplicationRecord
  # validates :genre, presence: true
  # validates :title, presence: true, length: { maximum: 25 }
  # validates :issue, presence: true, length: { maximum: 200 }
  # validates :address, presence: true
  # validates :latitude, presence: true
  # validates :longitude, presence: true


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  has_many :issue_ideas, dependent: :destroy
  has_many :through_ideas, through: :issue_ideas, source: :ideas
end
