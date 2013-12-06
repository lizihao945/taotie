class CreateCookSteps < ActiveRecord::Migration
  def change
    create_table :cook_steps do |t|
      t.references :cookbook
      t.string :image_url
      t.text :description

      t.timestamps
    end
    add_index :cook_steps, :cookbook_id
  end
end
