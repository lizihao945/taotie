class AddDetailToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :detail, :text, default: ""
  end
end
