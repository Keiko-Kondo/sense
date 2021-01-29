class AddUserRefToCurrentIssues < ActiveRecord::Migration[5.2]
  def change
    add_reference :current_issues, :user, foreign_key: true
  end
end
