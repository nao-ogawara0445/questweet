class CommentsController < ApplicationController
  def create
    
    
    
    @comment=Comment.new(comment_params)
    @comment.save
    redirect_to "/questions/#{@comment.question_id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  
end
