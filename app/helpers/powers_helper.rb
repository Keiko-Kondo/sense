module PowersHelper
  def choose_new_or_edit_powers
    if action_name == 'new'|| action_name == 'create'
      confirm_powers_path
    elsif action_name == 'edit'
      power_path
    end
  end
end
