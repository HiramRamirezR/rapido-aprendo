class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assignments, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :tasks, through: :assignments
  has_many :flashcards, through: :answers
  has_one_attached :photo

  def after_update
    redirect_to user_path(current_user)
  end

  validates :first_name, :last_name, presence: true
end
