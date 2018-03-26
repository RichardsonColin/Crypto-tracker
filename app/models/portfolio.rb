class Portfolio < ApplicationRecord
  validates :portfolio_name, presence: true,
                    length: { minimum: 1 }

  has_many :cryptos
  belongs_to :user
end
