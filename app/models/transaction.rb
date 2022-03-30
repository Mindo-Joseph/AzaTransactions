class Transaction < ApplicationRecord
  validates :customerID, :inputAmount, :inputCurrency, :outputAmount, :outputCurrency, :date, presence: true
end
