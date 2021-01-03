class Albums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :url
      t.string :thumb
      t.integer :wants
      t.timestamps
    end
  end
end
