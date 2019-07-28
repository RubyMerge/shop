require 'rails_helper'

RSpec.describe ExchangeRate, type: :model do
  let!(:rate) { FactoryBot.create(:exchange_rate) }

  describe 'validations' do
    it 'factory valid' do
      expect(rate).to be_valid
    end

    it 'usd are presents' do
      should validate_presence_of(:usd)
    end

    it 'eur are presents' do
      should validate_presence_of(:eur)
    end
  end
end
