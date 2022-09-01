class FlashcardsController < ApplicationController
  def index
    @task = Task.find(params[:task_id])
    @flashcards = @task.flashcards
  end
end
