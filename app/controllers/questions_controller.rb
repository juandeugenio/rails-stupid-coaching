class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:take]
    if @question.blank?
      @answer = "I cant Here"
    elsif @question == "I going to work"
      @answer = "Great"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work"
    else 
      @answer = "I don't care get dressed and go to work"
    end

  end
end
