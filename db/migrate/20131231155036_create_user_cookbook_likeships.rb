class CreateUserCookbookLikeships < ActiveRecord::Migration
  def change
    create_table :user_cookbook_likeships do |t|
      t.integer :cookbook_like_id
      t.integer :user_id

      t.timestamps
    end
  end
end
