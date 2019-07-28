require 'rails_helper'

describe 'ChangeExchangeRate' do

  let!(:change_ex) { ChangeExchangeRate.new }

  it 'update exchange_rate' do
    exc = FactoryBot.create(:exchange_rate, id: 1)
    VCR.use_cassette('exchange_rates_task') do
      expect(exc.usd).to eq 0.999e1
      expect(exc.eur).to eq 0.999e1
      expect(change_ex.update_exchange_rates).to be_truthy
      exc.reload
      expect(exc.usd.to_s).to eq "25.35"
      expect(exc.eur.to_s).to eq "28.1"
      assert_requested :get, "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5"
    end
  end

  describe '#find_and_create_rate' do
    it 'model create' do
     expect { change_ex.send(:find_and_create_rate, 21.09, 29.01 ) }.to change(ExchangeRate, :count).by(1)
    end
    it 'model exist' do
      FactoryBot.create(:exchange_rate, id: 1)
      expect { change_ex.send(:find_and_create_rate, 21.09, 29.01 ) }.to change(ExchangeRate, :count).by(0)
      expect(change_ex.send(:find_and_create_rate, 21.09, 29.01 ).class).to eq(ExchangeRate)
    end
  end
end