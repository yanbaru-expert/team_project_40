class QuestionsController < ApplicationController
  # 1ページの表示数
  PER_PAGE = 20
    
  def index
    @q = Question.ransack(params[:q])
    @questions = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def show
    @question = Question.find(params[:id])
  end
end
