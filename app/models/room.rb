class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy

  validates :name, length: { minimum: 2, maximum: 20 }, uniqueness: true
end
