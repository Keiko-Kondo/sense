class CreateIdeaPowers < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_powers do |t|
      t.integer :power_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
