class Message < ApplicationRecord
  validates :body, presence: true, length: { maximum: 1000 }

  belongs_to :conversation
  belongs_to :user
  validates_presence_of :body, :conversation_id, :user_id
  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
