class RemoveTherapistFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :therapist?
  end
end
