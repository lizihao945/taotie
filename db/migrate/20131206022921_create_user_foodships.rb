class CreateUserFoodships < ActiveRecord::Migration
  def change
    create_table :user_foodships do |t|
      t.integer :user_id
      t.integer :food_id

      t.timestamps
    end
  end
end
