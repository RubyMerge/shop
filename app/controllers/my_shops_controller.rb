class MyShopsController < InheritedResources::Base
 def index
   @index =  MyShop.find_by_page_name('index')
 end

 def contacts
 end

 def payment_delivery
 end

 def order_goods
 end

  private

    def my_shop_params
      params.require(:my_shop).permit(:page_name, :page)
    end

end
