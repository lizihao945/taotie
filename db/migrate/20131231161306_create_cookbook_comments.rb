class CreateCookbookComments < ActiveRecord::Migration
  def change
    create_table :cookbook_comments do |t|
      t.references :user
      t.references :cookbook
      t.text :content

      t.timestamps
    end
    add_index :cookbook_comments, :user_id
    add_index :cookbook_comments, :cookbook_id
  end
end
