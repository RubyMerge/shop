class OrdersController < InheritedResources::Base

  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.valid?
        @order.save

        OrderMailer.with(order: @order).success_order_email.deliver_now

        format.html { redirect_to(@order, notice: 'User was successfully created.') }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

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
