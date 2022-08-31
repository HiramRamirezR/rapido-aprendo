class ChangeColumnsInFlashcards < ActiveRecord::Migration[7.0]
  def change
    remove_column :flashcards, :completed
  end
end
