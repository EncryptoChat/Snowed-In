class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  validates :username,
            presence: true,
            uniqueness: true,
            length: { minimum: 2, maximum: 16 },
            format: { with: /\A[a-zA-Z0-9]+\z/,
                      message: "only allows letters and numbers, no special characters" }
end
