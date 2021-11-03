class Room < ApplicationRecord
  has_many :room_messages,
           dependent: :destroy

  validates :name,
            presence: true,
            uniqueness: true,
            length: { minimum: 2, maximum: 20 }
end
