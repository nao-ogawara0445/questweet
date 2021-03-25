class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
<<<<<<< Updated upstream
=======
    
    
    
>>>>>>> Stashed changes
    @comment=Comment.new(comment_params)
    if Obscenity.profane?(@comment.answer)
      @comment.answer="不適切な表現が含まれています"
    end
    @comment.save
    redirect_to "/questions/#{@comment.question_id}"
  end
<<<<<<< Updated upstream

  private
  def comment_params
    params.require(:comment).permit(:answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
=======
@ -12,6 +13,4 @@ class CommentsController < ApplicationController
  def comment_params
    params.require(:comment).permit(:answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  
end
end
>>>>>>> Stashed changes
