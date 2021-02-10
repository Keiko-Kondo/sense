class ChangeDataIconToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :icon, :text
  end
end
