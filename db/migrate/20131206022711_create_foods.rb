class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.references :category

      t.timestamps
    end
    add_index :foods, :category_id
  end
end
