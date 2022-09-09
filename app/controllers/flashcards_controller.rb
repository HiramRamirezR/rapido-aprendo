class FlashcardsController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
    @flashcards = @task.flashcards
  end

  def my_flashcards
    @flashcards = Flashcard.all.select { |f| f.task.users.include?(current_user) }.first(9)
  end
end
