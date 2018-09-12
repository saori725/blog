class CommentsController < ApplicationController
def create
    @comment = Comment.create(text: comment_params[:text], matelpage_id: comment_params[:matelpage_id], user_id: current_user.id)
    redirect_to "/matelpages/#{@comment.matelpage.id}"
  end

  private
  def comment_params
    params.permit(:text, :matelpage_id)
end
