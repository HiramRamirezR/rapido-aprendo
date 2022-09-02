class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
