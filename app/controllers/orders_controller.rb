class OrdersController < InheritedResources::Base

  def cost_calculation
    cost = CalculationCost.new(params[:value]).show_cost
    render plain: cost
  end

  private

    def order_params
      params.require(:order).permit(:count, :name, :last_name, :email, :phone, :city, :stock)
    end

end
