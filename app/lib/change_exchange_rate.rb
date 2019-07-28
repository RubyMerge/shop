class ChangeExchangeRate

  require 'open-uri'

  def update_exchange_rates
    buy = get_exchange_rates
    update_rate!(buy[0]["buy"].to_d, buy[1]["buy"].to_d)
  rescue => ex
    Rails.logger.info("An error of type #{ex.class} happened, message is #{ex.message}")
  end

  private

  def get_exchange_rates
    buffer = open("https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5").read
    JSON.parse(buffer)
  end

  def update_rate!(usd, eur)
     ex_rate = find_and_create_rate(usd, eur)
     if ex_rate.usd == usd && ex_rate.eur == eur
       return true
     else
       ex_rate.update!(usd: usd, eur: eur)
     end
  end

  def find_and_create_rate(usd, eur)
    ExchangeRate.where(id: 1).first_or_create! do |ex_rate|
      ex_rate.usd = usd
      ex_rate.eur = eur
    end
  end
end