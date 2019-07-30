class MyShopsController < InheritedResources::Base

  def index
    $exchange_rates = get_exchange_rates
    @data =  MyShop.find_by_page_name('main')
  end
  def contacts
    @data =  MyShop.find_by_page_name('contacts')
  end

  def payment_delivery
   @data =  MyShop.find_by_page_name('payment_delivery')
  end

  def order_goods
   @data =  MyShop.find_by_page_name('order_goods')
  end

  private

  def get_exchange_rates
    ex = ExchangeRate.find_by_id(1)
    if ex
      return convert_to_string_and_return_hash ex
    else
      ChangeExchangeRate.new.update_exchange_rates
      return convert_to_string_and_return_hash ExchangeRate.find_by_id(1)
    end
  end

  def convert_to_string_and_return_hash(ex)
    { usd: ex.usd.to_s, eur: ex.eur.to_s }
  end


end
