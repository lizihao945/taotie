class CookbookCommentsController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]
  def authenticate
    if current_user.nil?
      redirect_to login_path
    end
  end

  # POST /CookbookComments
  # POST /CookbookComments.json
  def create
    @cookbook_comment = CookbookComment.new(params[:cookbook_comment])
    @cookbook_comment.cookbook = Cookbook.find(params[:cookbook_id])
    @cookbook_comment.user = current_user
    @cookbook_comment.save
    respond_to do |format|
      format.js
    end
  end

  # PUT /CookbookComments/1
  # PUT /CookbookComments/1.json
  def update
    @CookbookComment = CookbookComment.find(params[:id])

    respond_to do |format|
      if @CookbookComment.update_attributes(params[:cookbook_comment])
        format.html { redirect_to @CookbookComment, notice: 'CookbookComment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @CookbookComment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /CookbookComments/1
  # DELETE /CookbookComments/1.json
  def destroy
    @CookbookComment = CookbookComment.find(params[:id])
    @CookbookComment.destroy
    respond_to do |format|
      format.js
    end
  end

end
