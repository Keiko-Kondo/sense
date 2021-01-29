class IssueIdea < ApplicationRecord
  belongs_to :current_issue
  belongs_to :idea
end
