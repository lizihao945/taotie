class AlterCountInCookbookLike < ActiveRecord::Migration
  def up
  	change_column :cookbook_likes, :count, :integer, default: 0
  end

  def down
  end
end
