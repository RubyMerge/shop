class CalculationCost

  def initialize(count)
    @cost = count.to_i * 220
  end

  def show_cost
     form_line
  end

  private

  def form_line
    "Cost of goods: $#{@cost} (#{@cost * get_ex_rate} grn)"
  end

  def get_ex_rate
    ExchangeRate.find_by_id(1).usd
  end
end