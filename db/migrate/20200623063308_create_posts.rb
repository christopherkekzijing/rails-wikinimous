class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :details
      t.integer :views

      t.timestamps
    end
  end
end