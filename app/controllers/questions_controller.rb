class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userinput = params[:userinput]
    if @userinput == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @userinput.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
