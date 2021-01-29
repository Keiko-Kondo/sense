class AddUserRefToPowers < ActiveRecord::Migration[5.2]
  def change
    add_reference :powers, :user, foreign_key: true
  end
end
