module IdeasHelper
  def choose_new_or_edit_ideas(current_issue_id)
    if action_name == 'new' || action_name == 'create'
      confirm_ideas_path(current_issue_id)
    elsif action_name == 'edit'
      idea_path
    end
  end
end
