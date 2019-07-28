desc 'it task updates the exchange rates'
task new_exchange_rates: :environment do
  ChangeExchangeRate.new.update_exchange_rates
end