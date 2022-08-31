class AddColumnContnentToFlashcards < ActiveRecord::Migration[7.0]
  def change
    add_column :flashcards, :content, :string
    add_column :flashcards, :answer, :string
  end
end
