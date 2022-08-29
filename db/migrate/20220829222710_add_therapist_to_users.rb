class AddTherapistToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :therapist, :boolean
  end
end
