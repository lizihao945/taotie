class RemoveCategoryFromFood < ActiveRecord::Migration
  def up
  	remove_column :foods, :category_id
  end

  def down
  end
end
