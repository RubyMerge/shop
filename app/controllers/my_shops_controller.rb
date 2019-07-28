class MyShopsController < InheritedResources::Base
 def index
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
end
