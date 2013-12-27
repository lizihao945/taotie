class LikesController < ApplicationController
  def update
    @like = Like.find(params[:id])
    if current_user.already_likes?(@like.food)
      user_likeship = UserLikeship.find_by_user_id current_user.id, conditions: ['like_id = ?', @like.id]
      user_likeship.destroy
      @like.update_attributes(count: "#{@like.count - 1}")
    else
      user_likeship = UserLikeship.create( like: @like, user: current_user )
      @like.update_attributes(count: "#{@like.count + 1}")
    end
    respond_to do |format|
      format.js
    end
  end
end
