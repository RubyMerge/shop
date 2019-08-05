class OrdersController < InheritedResources::Base
  attr_accessor :return_city

  def cost_calculation
    cost = CalculationCost.new(params[:value]).show_cost
    render plain: cost
  end

  def return_city
    @stock =  Novaposhta2[params[:value]].warehouses.map(&:description)
  end

  private

    def order_params
      params.require(:order).permit(:count, :name, :last_name, :email, :phone, :city, :stock)
    end

end
