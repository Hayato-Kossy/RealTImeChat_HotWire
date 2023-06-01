class User < ApplicationRecord
  devise :database_authenticatable, :registerable,:recoverable, :rememberable

  has_many :messages
  has_many :rooms

  has_one_attached :image
  validates :introduction, length: { maximum: 200 }
end
