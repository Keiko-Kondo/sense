module IdeasHelper
  def choose_new_or_edit_ideas
    if action_name == 'new' || action_name == 'create'
      confirm_ideas_path
    elsif action_name == 'edit'
      idea_path
    end
  end
end
