class OrderMailer < ApplicationMailer
  default from: 'kogutsergey1@gmail.com'

  def success_order_email
    @order = params[:order]
    mail(to: @order.email, subject: 'Success ordered')
  end
end
