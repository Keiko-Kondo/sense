class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :genre
      t.text :power
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
