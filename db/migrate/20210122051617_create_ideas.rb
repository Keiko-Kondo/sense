class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :idea
      t.string :expected_power
      t.timestamps
    end
  end
end
