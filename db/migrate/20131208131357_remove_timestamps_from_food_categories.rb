class RemoveTimestampsFromFoodCategories < ActiveRecord::Migration
  def up
  	remove_column :food_categories, :created_at
  	remove_column :food_categories, :updated_at
  end

  def down
  end
end
