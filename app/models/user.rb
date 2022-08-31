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

  validates :first_name, :last_name, presence: true

  private

  def default_avatar
    unless self.photo.attached?
      file = URI.open("https://res.cloudinary.com/dqfnzfthu/image/upload/v1661464299/avatar-g0212f9dd5_640_dsnzfw.png")
      self.photo.attach(io: file, filename: "default_avatar_#{self.first_name}", content_type: "image/png")
      self.save
    end
  end
end
