class ChangeColumnTherapistInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :therapist, :boolean, default: false
  end
end
