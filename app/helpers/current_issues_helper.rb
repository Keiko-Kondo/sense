module CurrentIssuesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_current_issues_path
    elsif action_name == 'edit'
      current_issue_path
    end
  end
end
