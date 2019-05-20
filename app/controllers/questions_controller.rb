class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    return @answer = 'Great!' if @input == 'I am going to work'
    return @answer = 'Did you say something?' if @input == ''
    if @input.include? '?'
      return @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end
end
