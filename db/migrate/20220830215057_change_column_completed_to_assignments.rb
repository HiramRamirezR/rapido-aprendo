class ChangeColumnCompletedToAssignments < ActiveRecord::Migration[7.0]
  def change
    change_column :assignments, :completed, :boolean, default: false
  end
end
