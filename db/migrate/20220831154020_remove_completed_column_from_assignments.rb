class RemoveCompletedColumnFromAssignments < ActiveRecord::Migration[7.0]
  def change
    remove_column :assignments, :completed
  end
end
