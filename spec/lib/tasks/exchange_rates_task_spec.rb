require 'rails_helper'
require 'rake'

describe 'Exchange Rates Task' do

  before do
    Shop::Application.load_tasks
    Rake::Task.define_task(:environment)
  end

  let!(:exc) { FactoryBot.create(:exchange_rate, id: 1) }

  it 'update exchange_rate' do
    VCR.use_cassette('exchange_rates_task') do
      expect(exc.usd).to eq 0.999e1
      expect(exc.eur).to eq 0.999e1
      expect( Rake::Task[:new_exchange_rates].invoke).to be_truthy
      exc.reload
      expect(exc.usd.to_s).to eq "25.35"
      expect(exc.eur.to_s).to eq "28.1"
      assert_requested :get, "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5"
    end
  end
end