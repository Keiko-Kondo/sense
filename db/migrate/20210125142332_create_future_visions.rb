class CreateFutureVisions < ActiveRecord::Migration[5.2]
  def change
    create_table :future_visions do |t|
      t.string :genre
      t.string :title
      t.text :vision
      t.string :expected
      t.text :possible_method
      t.string :address
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
