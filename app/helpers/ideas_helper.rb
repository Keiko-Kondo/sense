module IdeasHelper
  def choose_new_or_edit_idea
    if action_name == 'new' || action_name == 'create'
      confirm_current_issue_ideas_path
    elsif action_name == 'edit'
      current_issue_idea_path
    end
  end
end
