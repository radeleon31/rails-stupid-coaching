class QuestionsController < ApplicationController
  def ask

  end

  def answer
  # If the message is I am going to work, the coach will answer Great!
  # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
  # Otherwise the coach will answer I don't care, get dressed and go to work!
    @coach_answer =
      if params[:message] == "I am going to work"
        "great"
      elsif params[:message].end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
