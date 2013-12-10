class AddImageUrlToFoods < ActiveRecord::Migration
  def change
  	add_column :foods, :image_url, :string, default: ""
  end
end
