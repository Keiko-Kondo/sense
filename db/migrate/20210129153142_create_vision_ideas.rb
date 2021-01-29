class CreateVisionIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :vision_ideas do |t|
      t.integer :future_vision_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
