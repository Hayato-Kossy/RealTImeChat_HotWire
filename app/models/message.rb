class Message < ApplicationRecord
  broadcasts_to :room

  belongs_to :room
  belongs_to :user

  validates :user_id, presence: true
end
