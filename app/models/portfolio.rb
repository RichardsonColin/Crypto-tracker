class Portfolio < ApplicationRecord
  has_many :cryptos

  validates :portfolio_name, presence: true,
                    length: { minimum: 1 }
end
