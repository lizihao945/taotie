class CreateCookbookLikes < ActiveRecord::Migration
  def change
    create_table :cookbook_likes do |t|
      t.references :cookbook
      t.integer :count

      t.timestamps
    end
    add_index :cookbook_likes, :cookbook_id
  end
end
