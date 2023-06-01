class User < ApplicationRecord
  devise :database_authenticatable, :registerable,:recoverable, :rememberable

  has_many :messages
end
