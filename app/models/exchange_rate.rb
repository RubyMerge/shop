class ExchangeRate < ApplicationRecord
  validates :usd, :eur,  presence: true
end
