class MakeLikeForFoods < ActiveRecord::Migration
  def up
  	Food.all.each do |food|
  		if food.like.nil?
  			like = Like.new
  			like.count = 0
  			food.like = like
  		end
  	end
  end

  def down
  end
end
