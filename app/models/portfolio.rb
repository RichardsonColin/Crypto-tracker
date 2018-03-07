class Portfolio < ApplicationRecord
  validates :portfolio_name, presence: true,
                    length: { minimum: 1 }
end
