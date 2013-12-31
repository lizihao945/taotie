class CookbookLikesController < ApplicationController
  def update
    @cookbook_like = CookbookLike.find(params[:id])
    if current_user.already_likes_cookbook?(@cookbook_like.cookbook)
      user_cookbook_likeship = UserCookbookLikeship.find_by_user_id current_user.id, conditions: ['cookbook_like_id = ?', @cookbook_like.id]
      user_cookbook_likeship.destroy
      @cookbook_like.update_attributes(count: "#{@cookbook_like.count - 1}")
    else
      user_cookbook_likeship = UserCookbookLikeship.create( cookbook_like: @cookbook_like, user: current_user )
      @cookbook_like.update_attributes(count: "#{@cookbook_like.count + 1}")
    end
    respond_to do |format|
      format.js
    end
  end
end
