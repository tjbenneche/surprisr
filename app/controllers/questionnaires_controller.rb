class QuestionnairesController < ApplicationController

  def create
    q = Questionnaire.new q_params
    q.save
  end

  def new
  end

  private
  def q_params
    params.require(:questionnaire).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10)
  end

end
