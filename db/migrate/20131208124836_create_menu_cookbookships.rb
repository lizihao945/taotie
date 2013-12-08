class CreateMenuCookbookships < ActiveRecord::Migration
  def change
    create_table :menu_cookbookships do |t|
      t.integer :menu_id
      t.integer :cookbook_id

      t.timestamps
    end
  end
end
