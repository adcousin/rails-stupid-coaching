class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # fail
    if /I am going to work/.match?(params[:question])
      @answer = 'Great!'
    elsif /\?/.match?(params[:question])
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
