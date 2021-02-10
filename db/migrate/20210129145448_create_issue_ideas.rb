class CreateIssueIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :issue_ideas do |t|
      t.integer :current_issue_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
