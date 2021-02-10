class CreateFutureVisions < ActiveRecord::Migration[5.2]
  def change
    create_table :future_visions do |t|
      t.string :genre
      t.string :title
      t.text :vision
      t.string :expected
      t.text :possible_method
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
