class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.references :cookbook
      t.string :name
      t.integer :quantity

      t.timestamps
    end
    add_index :materials, :cookbook_id
  end
end
