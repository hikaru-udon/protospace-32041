class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params_comment)
    if @comment.save
      redirect_to prototype_path(@comment.prototype_id)
    else 
      @prototype = Prototype.find(params[:id])
      render :show
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
