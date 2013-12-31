class MakeCookbookLikeForCookbooks < ActiveRecord::Migration
  def up
  	Cookbook.all.each do |cookbook|
  		if cookbook.cookbook_like.nil?
  			cookbook_like = CookbookLike.new
  			cookbook_like.count = 0
  			cookbook.cookbook_like = cookbook_like
  		end
  	end
  end
  def down
  end
end
