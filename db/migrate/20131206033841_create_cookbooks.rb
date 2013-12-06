class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.references :user
      t.integer :difficulty_level
      t.integer :time_level
      t.string :description
      t.string :tips

      t.timestamps
    end
  end
end
