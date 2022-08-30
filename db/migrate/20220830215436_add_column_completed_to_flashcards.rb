class AddColumnCompletedToFlashcards < ActiveRecord::Migration[7.0]
  def change
    add_column :flashcards, :completed, :boolean, default: false
  end
end
