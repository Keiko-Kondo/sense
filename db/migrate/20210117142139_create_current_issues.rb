class CreateCurrentIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :current_issues do |t|
      t.string :genre
      t.string :title
      t.text :issue
      t.string :taker
      t.string :giver
      t.text :idea
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
