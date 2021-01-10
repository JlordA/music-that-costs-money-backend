class Favorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :album
    end
  end
end
