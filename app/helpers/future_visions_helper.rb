module FutureVisionsHelper
  def choose_new_or_edit
    if action_name == 'new'|| action_name == 'create'
      confirm_future_visions_path
    elsif action_name == 'edit'
      future_vision_path
    end
  end
end
