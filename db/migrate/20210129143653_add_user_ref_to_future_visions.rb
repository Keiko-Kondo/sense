class AddUserRefToFutureVisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :future_visions, :user, foreign_key: true
  end
end
