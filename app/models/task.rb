class Task < ApplicationRecord
  has_many :flashcards, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments

  validates :title, :details, presence: true
end
