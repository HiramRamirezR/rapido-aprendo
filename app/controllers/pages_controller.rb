class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @tasks = Task.first(3)
    @flashcards = Flashcard.first(4)
    # @task = Task.find(params[:task_id])
    # @flashcards = @task.flashcards
    # @flashcards = Flashcard.all
  end
end
