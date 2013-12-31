class AddFoodItToCookbooks < ActiveRecord::Migration
  def change
  	add_column :cookbooks, :food_id, :integer
  end
end
