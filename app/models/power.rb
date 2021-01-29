class Power < ApplicationRecord
  validates :power, presence: true

  belongs_to :user
end
