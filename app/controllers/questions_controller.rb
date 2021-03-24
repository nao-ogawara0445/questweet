class QuestionsController < ApplicationController
  def index
    @question=Question.all
  end

  def new
    @question=Question.new
  end

  def create
    @question=Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @question=Question.find(params[:id])
    @comment=Comment.new
    @comments= @question.comments.includes(:user)
  end
  
  private
  def question_params
    params.require(:question).permit(:title,:explain).merge(user_id: current_user.id)
  end
 

end
