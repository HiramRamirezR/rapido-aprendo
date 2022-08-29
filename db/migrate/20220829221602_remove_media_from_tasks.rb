class RemoveMediaFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :media
  end
end
