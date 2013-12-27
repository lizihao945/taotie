class CreateUserLikeships < ActiveRecord::Migration
  def change
    create_table :user_likeships do |t|
      t.integer :like_id
      t.integer :user_id

      t.timestamps
    end
  end
end
