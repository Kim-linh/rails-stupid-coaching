class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if !params[:question].nil?
      message = params[:question]
      if message == 'I am going to work'
        @answer = 'Great!'
      elsif message.include?('?')
        @answer = 'Silly questions, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = 'error, pas de messages'
    end
  end
end
