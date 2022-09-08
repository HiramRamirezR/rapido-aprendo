class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @tasks = current_user.tasks.first(3)
    @flashcards = Flashcard.first(4)
  end
end
