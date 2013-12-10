class AddImgUrlToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :image_url, :string, default: ""
  end
end
