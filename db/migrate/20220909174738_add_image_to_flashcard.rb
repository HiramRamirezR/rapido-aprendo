class AddImageToFlashcard < ActiveRecord::Migration[7.0]
  def change
    add_column :flashcards, :image, :string
  end
end
