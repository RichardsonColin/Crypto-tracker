class Crypto < ApplicationRecord
  belongs_to :portfolio

  validates :crypto, presence: true,
                    length: { minimum: 2 }
end
