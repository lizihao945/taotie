class AddMainUserToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :main_user_id, :integer
    add_index :foods, :main_user_id
  end
end
