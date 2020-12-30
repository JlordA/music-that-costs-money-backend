class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :price
      t.integer :like
      t.boolean :for_sale
      t.belongs_to :user
      t.belongs_to :album
      t.timestamps
    end
  end
end
