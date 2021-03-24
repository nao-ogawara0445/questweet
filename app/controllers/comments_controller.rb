class CommentsController < ApplicationController
  def create
    @comment=Comment.create(comment_params)
    #binding.pry
   if Obscenity.profane?(@comment.answer)

    redirect_to "/questions/#{@comment.question_id}"
   else
    redirect_to "/questions/#{@comment.question_id}"
   end
  end

  private
  def comment_params
    params.require(:comment).permit(:answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
