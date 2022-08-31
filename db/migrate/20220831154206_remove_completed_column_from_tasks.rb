class RemoveCompletedColumnFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :completed
  end
end
