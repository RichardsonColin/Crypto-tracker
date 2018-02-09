class Crypto < ApplicationRecord
  validates :crypto, presence: true,
                    length: { minimum: 2 }
end
