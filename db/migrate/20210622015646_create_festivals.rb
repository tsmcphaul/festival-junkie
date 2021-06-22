class CreateFestivals < ActiveRecord::Migration[6.1]
  def change
    create_table :festivals do |t|
      t.string :title
      t.datetime :date
      t.string :city
      t.string :state
      t.string :genre
      t.string :venue
      t.text :artist

      t.timestamps
    end
  end
end
