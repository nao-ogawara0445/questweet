class CommentsController < ApplicationController
  def create
    
    #binding.pry
    @comment=Comment.create(comment_params)
   if Obscenity.profane?(@comment.answer)
    @comment.answer="卑猥な表現です"
    @comment=Comment.create
    redirect_to root_path
   else
    @comment.answer="卑猥な表現ではありません"
    redirect_to "/questions/#{@comment.question_id}"
   end
  end

  private
  def comment_params
    params.require(:comment).permit(:answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
