class AddImageUrlToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :image_url, :string
  end
end
